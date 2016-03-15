use NativeCall;
use SDL2::Raw;
use SDL2::GPU::Raw;

my $event = SDL_Event.new;

sub mainloop($screen) {
    main: loop {
        while SDL_PollEvent($event) {
            my $casted_event = SDL_CastEvent($event);

            given $casted_event {
                when *.type == QUIT {
                    last main;
                }
            }
        }

        GPU_Clear($screen);

        GPU_Flip($screen);
    }
}

my GPU_Target $screen = GPU_Init(800, 600, 0);

die "omg" unless $screen;

mainloop($screen);

GPU_Quit();
