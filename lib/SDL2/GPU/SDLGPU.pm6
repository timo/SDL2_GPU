## Enumerations

use SDL2::Raw;
use NativeCall;

constant LIB = "SDL2_gpu";

# == /root/piko/tmp/sdl-gpu/include/SDL_gpu.h ==

enum GPU_BlendFuncEnum is export (
   GPU_FUNC_ZERO => 0,
   GPU_FUNC_ONE => 1,
   GPU_FUNC_SRC_COLOR => 768,
   GPU_FUNC_DST_COLOR => 774,
   GPU_FUNC_ONE_MINUS_SRC => 769,
   GPU_FUNC_ONE_MINUS_DST => 775,
   GPU_FUNC_SRC_ALPHA => 770,
   GPU_FUNC_DST_ALPHA => 772,
   GPU_FUNC_ONE_MINUS_SRC_ALPHA => 771,
   GPU_FUNC_ONE_MINUS_DST_ALPHA => 773
);
enum GPU_BlendEqEnum is export (
   GPU_EQ_ADD => 32774,
   GPU_EQ_SUBTRACT => 32778,
   GPU_EQ_REVERSE_SUBTRACT => 32779
);
enum GPU_BlendPresetEnum is export (
   GPU_BLEND_NORMAL => 0,
   GPU_BLEND_PREMULTIPLIED_ALPHA => 1,
   GPU_BLEND_MULTIPLY => 2,
   GPU_BLEND_ADD => 3,
   GPU_BLEND_SUBTRACT => 4,
   GPU_BLEND_MOD_ALPHA => 5,
   GPU_BLEND_SET_ALPHA => 6,
   GPU_BLEND_SET => 7,
   GPU_BLEND_NORMAL_KEEP_ALPHA => 8,
   GPU_BLEND_NORMAL_ADD_ALPHA => 9
);
enum GPU_FilterEnum is export (
   GPU_FILTER_NEAREST => 0,
   GPU_FILTER_LINEAR => 1,
   GPU_FILTER_LINEAR_MIPMAP => 2
);
enum GPU_SnapEnum is export (
   GPU_SNAP_NONE => 0,
   GPU_SNAP_POSITION => 1,
   GPU_SNAP_DIMENSIONS => 2,
   GPU_SNAP_POSITION_AND_DIMENSIONS => 3
);
enum GPU_WrapEnum is export (
   GPU_WRAP_NONE => 0,
   GPU_WRAP_REPEAT => 1,
   GPU_WRAP_MIRRORED => 2
);
enum GPU_FormatEnum is export (
   GPU_FORMAT_LUMINANCE => 1,
   GPU_FORMAT_LUMINANCE_ALPHA => 2,
   GPU_FORMAT_RGB => 3,
   GPU_FORMAT_RGBA => 4,
   GPU_FORMAT_ALPHA => 5,
   GPU_FORMAT_RG => 6,
   GPU_FORMAT_YCbCr422 => 7,
   GPU_FORMAT_YCbCr420P => 8
);
enum GPU_FileFormatEnum is export (
   GPU_FILE_AUTO => 0,
   GPU_FILE_PNG => 1,
   GPU_FILE_BMP => 2,
   GPU_FILE_TGA => 3
);
enum GPU_ShaderEnum is export (
   GPU_VERTEX_SHADER => 0,
   GPU_FRAGMENT_SHADER => 1,
   GPU_PIXEL_SHADER => 1,
   GPU_GEOMETRY_SHADER => 2
);
enum GPU_ShaderLanguageEnum is export (
   GPU_LANGUAGE_NONE => 0,
   GPU_LANGUAGE_ARB_ASSEMBLY => 1,
   GPU_LANGUAGE_GLSL => 2,
   GPU_LANGUAGE_GLSLES => 3,
   GPU_LANGUAGE_HLSL => 4,
   GPU_LANGUAGE_CG => 5
);
enum GPU_ErrorEnum is export (
   GPU_ERROR_NONE => 0,
   GPU_ERROR_BACKEND_ERROR => 1,
   GPU_ERROR_DATA_ERROR => 2,
   GPU_ERROR_USER_ERROR => 3,
   GPU_ERROR_UNSUPPORTED_FUNCTION => 4,
   GPU_ERROR_NULL_ARGUMENT => 5,
   GPU_ERROR_FILE_NOT_FOUND => 6
);
enum GPU_DebugLevelEnum is export (
   GPU_DEBUG_LEVEL_0 => 0,
   GPU_DEBUG_LEVEL_1 => 1,
   GPU_DEBUG_LEVEL_2 => 2,
   GPU_DEBUG_LEVEL_3 => 3,
   GPU_DEBUG_LEVEL_MAX => 3
);
enum GPU_LogLevelEnum is export (
   GPU_LOG_INFO => 0,
   GPU_LOG_WARNING => 1,
   GPU_LOG_ERROR => 2
);
## Structures

class GPU_Renderer is repr('CStruct') is export { ... }
class GPU_Target is repr('CStruct') is export { ... }
class SDL_Palette is repr('CStruct') is export { ... }

class SDL_BlitMap is repr('CPointer') is export { }
class SDL_RWops is repr('CPointer') is export { }

class SDL_version is repr('CStruct') is export {
	has uint8                       $.major; # Typedef<Uint8>->|Typedef<uint8>->|unsigned char|| major
	has uint8                       $.minor; # Typedef<Uint8>->|Typedef<uint8>->|unsigned char|| minor
	has uint8                       $.patch; # Typedef<Uint8>->|Typedef<uint8>->|unsigned char|| patch
}

class SDL_PixelFormat is repr('CStruct') is export {
	has uint32                      $.format; # Typedef<Uint32>->|Typedef<uint32>->|unsigned int|| format
	has SDL_Palette                   $.palette; # Typedef<SDL_Palette>->|SDL_Palette|* palette
	has uint8                       $.BitsPerPixel; # Typedef<Uint8>->|Typedef<uint8>->|unsigned char|| BitsPerPixel
	has uint8                       $.BytesPerPixel; # Typedef<Uint8>->|Typedef<uint8>->|unsigned char|| BytesPerPixel
	has CArray[uint8]               $.padding; # Typedef<Uint8>->|Typedef<uint8>->|unsigned char||[2] padding
	has uint32                      $.Rmask; # Typedef<Uint32>->|Typedef<uint32>->|unsigned int|| Rmask
	has uint32                      $.Gmask; # Typedef<Uint32>->|Typedef<uint32>->|unsigned int|| Gmask
	has uint32                      $.Bmask; # Typedef<Uint32>->|Typedef<uint32>->|unsigned int|| Bmask
	has uint32                      $.Amask; # Typedef<Uint32>->|Typedef<uint32>->|unsigned int|| Amask
	has uint8                       $.Rloss; # Typedef<Uint8>->|Typedef<uint8>->|unsigned char|| Rloss
	has uint8                       $.Gloss; # Typedef<Uint8>->|Typedef<uint8>->|unsigned char|| Gloss
	has uint8                       $.Bloss; # Typedef<Uint8>->|Typedef<uint8>->|unsigned char|| Bloss
	has uint8                       $.Aloss; # Typedef<Uint8>->|Typedef<uint8>->|unsigned char|| Aloss
	has uint8                       $.Rshift; # Typedef<Uint8>->|Typedef<uint8>->|unsigned char|| Rshift
	has uint8                       $.Gshift; # Typedef<Uint8>->|Typedef<uint8>->|unsigned char|| Gshift
	has uint8                       $.Bshift; # Typedef<Uint8>->|Typedef<uint8>->|unsigned char|| Bshift
	has uint8                       $.Ashift; # Typedef<Uint8>->|Typedef<uint8>->|unsigned char|| Ashift
	has int32                         $.refcount; # int refcount
	has SDL_PixelFormat               $.next; # SDL_PixelFormat* next
}

class SDL_Surface is repr('CStruct') is export {
	has uint32                      $.flags; # Typedef<Uint32>->|Typedef<uint32>->|unsigned int|| flags
	has SDL_PixelFormat               $.format; # Typedef<SDL_PixelFormat>->|SDL_PixelFormat|* format
	has int32                         $.w; # int w
	has int32                         $.h; # int h
	has int32                         $.pitch; # int pitch
	has Pointer                       $.pixels; # void* pixels
	has Pointer                       $.userdata; # void* userdata
	has int32                         $.locked; # int locked
	has Pointer                       $.lock_data; # void* lock_data
	has SDL_Rect                      $.clip_rect; # Typedef<SDL_Rect>->|SDL_Rect| clip_rect
	has SDL_BlitMap                   $.map; # SDL_BlitMap* map
	has int32                         $.refcount; # int refcount
}

# == /root/piko/tmp/sdl-gpu/include/SDL_gpu.h ==

class SDL_Color is repr('CStruct') is export {
	has uint8                       $.r; # Typedef<Uint8>->|Typedef<uint8>->|unsigned char|| r
	has uint8                       $.g; # Typedef<Uint8>->|Typedef<uint8>->|unsigned char|| g
	has uint8                       $.b; # Typedef<Uint8>->|Typedef<uint8>->|unsigned char|| b
	has uint8                       $.a; # Typedef<Uint8>->|Typedef<uint8>->|unsigned char|| a
}

class SDL_Palette is export {
	has int32                         $.ncolors; # int ncolors
	has SDL_Color                     $.colors; # Typedef<SDL_Color>->|SDL_Color|* colors
	has uint32                      $.version; # Typedef<Uint32>->|Typedef<uint32>->|unsigned int|| version
	has int32                         $.refcount; # int refcount
}

class GPU_Rect is repr('CStruct') is export {
	has num32                         $.x; # float x
	has num32                         $.y; # float y
	has num32                         $.w; # float w
	has num32                         $.h; # float h
}
class GPU_RendererID is repr('CStruct') is export {
	has Str                           $.name; # const char* name
	has uint32                      $.renderer; # Typedef<GPU_RendererEnum>->|Typedef<Uint32>->|Typedef<uint32>->|unsigned int||| renderer
	has int32                         $.major_version; # int major_version
	has int32                         $.minor_version; # int minor_version
}
class GPU_BlendMode is repr('CStruct') is export {
	has int32                         $.source_color; # GPU_BlendFuncEnum source_color
	has int32                         $.dest_color; # GPU_BlendFuncEnum dest_color
	has int32                         $.source_alpha; # GPU_BlendFuncEnum source_alpha
	has int32                         $.dest_alpha; # GPU_BlendFuncEnum dest_alpha
	has int32                         $.color_equation; # GPU_BlendEqEnum color_equation
	has int32                         $.alpha_equation; # GPU_BlendEqEnum alpha_equation
}
class GPU_Image is repr('CStruct') is export {
	has GPU_Renderer                  $.renderer; # GPU_Renderer* renderer
	has GPU_Target                    $.target; # Typedef<GPU_Target>->|GPU_Target|* target
	has uint16                      $.w; # Typedef<Uint16>->|Typedef<uint16>->|short unsigned int|| w
	has uint16                      $.h; # Typedef<Uint16>->|Typedef<uint16>->|short unsigned int|| h
	has uint8                       $.using_virtual_resolution; # Typedef<Uint8>->|Typedef<uint8>->|unsigned char|| using_virtual_resolution
	has int32                         $.format; # GPU_FormatEnum format
	has int32                         $.num_layers; # int num_layers
	has int32                         $.bytes_per_pixel; # int bytes_per_pixel
	has uint16                      $.base_w; # Typedef<Uint16>->|Typedef<uint16>->|short unsigned int|| base_w
	has uint16                      $.base_h; # Typedef<Uint16>->|Typedef<uint16>->|short unsigned int|| base_h
	has uint16                      $.texture_w; # Typedef<Uint16>->|Typedef<uint16>->|short unsigned int|| texture_w
	has uint16                      $.texture_h; # Typedef<Uint16>->|Typedef<uint16>->|short unsigned int|| texture_h
	has uint8                       $.has_mipmaps; # Typedef<Uint8>->|Typedef<uint8>->|unsigned char|| has_mipmaps
	has SDL_Color                     $.color; # Typedef<SDL_Color>->|SDL_Color| color
	has uint8                       $.use_blending; # Typedef<Uint8>->|Typedef<uint8>->|unsigned char|| use_blending
	has GPU_BlendMode                 $.blend_mode; # Typedef<GPU_BlendMode>->|GPU_BlendMode| blend_mode
	has int32                         $.filter_mode; # GPU_FilterEnum filter_mode
	has int32                         $.snap_mode; # GPU_SnapEnum snap_mode
	has int32                         $.wrap_mode_x; # GPU_WrapEnum wrap_mode_x
	has int32                         $.wrap_mode_y; # GPU_WrapEnum wrap_mode_y
	has Pointer                       $.data; # void* data
	has int32                         $.refcount; # int refcount
	has uint8                       $.is_alias; # Typedef<Uint8>->|Typedef<uint8>->|unsigned char|| is_alias
}
class GPU_Camera is repr('CStruct') is export {
	has num32                         $.x; # float x
	has num32                         $.y; # float y
	has num32                         $.z; # float z
	has num32                         $.angle; # float angle
	has num32                         $.zoom; # float zoom
}
class GPU_ShaderBlock is repr('CStruct') is export {
	has int32                         $.position_loc; # int position_loc
	has int32                         $.texcoord_loc; # int texcoord_loc
	has int32                         $.color_loc; # int color_loc
	has int32                         $.modelViewProjection_loc; # int modelViewProjection_loc
}
class GPU_MatrixStack is repr('CStruct') is export {
	has uint32                        $.size; # unsigned int size
	has CArray[CArray[num32]]         $.matrix; # float[16][5] matrix
}
class GPU_Context is repr('CStruct') is export {
	has Pointer                       $.context; # void* context
	has uint8                       $.failed; # Typedef<Uint8>->|Typedef<uint8>->|unsigned char|| failed
	has uint32                      $.windowID; # Typedef<Uint32>->|Typedef<uint32>->|unsigned int|| windowID
	has int32                         $.window_w; # int window_w
	has int32                         $.window_h; # int window_h
	has int32                         $.drawable_w; # int drawable_w
	has int32                         $.drawable_h; # int drawable_h
	has int32                         $.stored_window_w; # int stored_window_w
	has int32                         $.stored_window_h; # int stored_window_h
	has uint32                      $.current_shader_program; # Typedef<Uint32>->|Typedef<uint32>->|unsigned int|| current_shader_program
	has uint32                      $.defaultextured_shader_program; # Typedef<Uint32>->|Typedef<uint32>->|unsigned int|| defaultextured_shader_program
	has uint32                      $.default_untextured_shader_program; # Typedef<Uint32>->|Typedef<uint32>->|unsigned int|| default_untextured_shader_program
	has uint8                       $.shapes_use_blending; # Typedef<Uint8>->|Typedef<uint8>->|unsigned char|| shapes_use_blending
	has GPU_BlendMode                 $.shapes_blend_mode; # Typedef<GPU_BlendMode>->|GPU_BlendMode| shapes_blend_mode
	has num32                         $.linehickness; # float linehickness
	has uint8                       $.useexturing; # Typedef<Uint8>->|Typedef<uint8>->|unsigned char|| useexturing
	has int32                         $.matrix_mode; # int matrix_mode
	has GPU_MatrixStack               $.projection_matrix; # Typedef<GPU_MatrixStack>->|GPU_MatrixStack| projection_matrix
	has GPU_MatrixStack               $.modelview_matrix; # Typedef<GPU_MatrixStack>->|GPU_MatrixStack| modelview_matrix
	has Pointer                       $.data; # void* data
}
class GPU_Target is export {
	has GPU_Renderer                  $.renderer; # GPU_Renderer* renderer
	has GPU_Image                     $.image; # Typedef<GPU_Image>->|GPU_Image|* image
	has Pointer                       $.data; # void* data
	has uint16                      $.w; # Typedef<Uint16>->|Typedef<uint16>->|short unsigned int|| w
	has uint16                      $.h; # Typedef<Uint16>->|Typedef<uint16>->|short unsigned int|| h
	has uint8                       $.using_virtual_resolution; # Typedef<Uint8>->|Typedef<uint8>->|unsigned char|| using_virtual_resolution
	has uint16                      $.base_w; # Typedef<Uint16>->|Typedef<uint16>->|short unsigned int|| base_w
	has uint16                      $.base_h; # Typedef<Uint16>->|Typedef<uint16>->|short unsigned int|| base_h
	has uint8                       $.use_clip_rect; # Typedef<Uint8>->|Typedef<uint8>->|unsigned char|| use_clip_rect
	has GPU_Rect                      $.clip_rect; # Typedef<GPU_Rect>->|GPU_Rect| clip_rect
	has uint8                       $.use_color; # Typedef<Uint8>->|Typedef<uint8>->|unsigned char|| use_color
	has SDL_Color                     $.color; # Typedef<SDL_Color>->|SDL_Color| color
	has GPU_Rect                      $.viewport; # Typedef<GPU_Rect>->|GPU_Rect| viewport
	has GPU_Camera                    $.camera; # Typedef<GPU_Camera>->|GPU_Camera| camera
	has uint8                       $.use_camera; # Typedef<Uint8>->|Typedef<uint8>->|unsigned char|| use_camera
	has GPU_Context                   $.context; # Typedef<GPU_Context>->|GPU_Context|* context
	has int32                         $.refcount; # int refcount
	has uint8                       $.is_alias; # Typedef<Uint8>->|Typedef<uint8>->|unsigned char|| is_alias
}
class GPU_AttributeFormat is repr('CStruct') is export {
	has uint8                       $.is_per_sprite; # Typedef<Uint8>->|Typedef<uint8>->|unsigned char|| is_per_sprite
	has int32                         $.num_elems_per_value; # int num_elems_per_value
	has uint32                      $.type; # Typedef<GPU_TypeEnum>->|Typedef<Uint32>->|Typedef<uint32>->|unsigned int||| type
	has uint8                       $.normalize; # Typedef<Uint8>->|Typedef<uint8>->|unsigned char|| normalize
	has int32                         $.stride_bytes; # int stride_bytes
	has int32                         $.offset_bytes; # int offset_bytes
}
class GPU_Attribute is repr('CStruct') is export {
	has int32                         $.location; # int location
	has Pointer                       $.values; # void* values
	has GPU_AttributeFormat           $.format; # Typedef<GPU_AttributeFormat>->|GPU_AttributeFormat| format
}
class GPU_AttributeSource is repr('CStruct') is export {
	has uint8                       $.enabled; # Typedef<Uint8>->|Typedef<uint8>->|unsigned char|| enabled
	has int32                         $.num_values; # int num_values
	has Pointer                       $.next_value; # void* next_value
	has int32                         $.per_vertex_storage_stride_bytes; # int per_vertex_storage_stride_bytes
	has int32                         $.per_vertex_storage_offset_bytes; # int per_vertex_storage_offset_bytes
	has int32                         $.per_vertex_storage_size; # int per_vertex_storage_size
	has Pointer                       $.per_vertex_storage; # void* per_vertex_storage
	has GPU_Attribute                 $.attribute; # Typedef<GPU_Attribute>->|GPU_Attribute| attribute
}
class GPU_ErrorObject is repr('CStruct') is export {
	has Str                           $.function; # char* function
	has int32                         $.error; # GPU_ErrorEnum error
	has Str                           $.details; # char* details
}
class GPU_RendererImpl is repr('CStruct') is export {
}
class GPU_Renderer is export {
	has GPU_RendererID                $.id; # Typedef<GPU_RendererID>->|GPU_RendererID| id
	has GPU_RendererID                $.requested_id; # Typedef<GPU_RendererID>->|GPU_RendererID| requested_id
	has uint32                      $.SDL_init_flags; # Typedef<GPU_WindowFlagEnum>->|Typedef<Uint32>->|Typedef<uint32>->|unsigned int||| SDL_init_flags
	has uint32                      $.GPU_init_flags; # Typedef<GPU_InitFlagEnum>->|Typedef<Uint32>->|Typedef<uint32>->|unsigned int||| GPU_init_flags
	has int32                         $.shader_language; # GPU_ShaderLanguageEnum shader_language
	has int32                         $.min_shader_version; # int min_shader_version
	has int32                         $.max_shader_version; # int max_shader_version
	has uint32                      $.enabled_features; # Typedef<GPU_FeatureEnum>->|Typedef<Uint32>->|Typedef<uint32>->|unsigned int||| enabled_features
	has GPU_Target                    $.current_contextarget; # Typedef<GPU_Target>->|GPU_Target|* current_contextarget
	has uint8                       $.coordinate_mode; # Typedef<Uint8>->|Typedef<uint8>->|unsigned char|| coordinate_mode
	has GPU_RendererImpl              $.impl; # GPU_RendererImpl* impl
}
## Extras stuff

# == /root/piko/tmp/sdl-gpu/include/SDL_gpu.h ==

#-From /root/piko/tmp/sdl-gpu/include/SDL_gpu.h:608
#// Visual C does not support static inline
##ifdef _MSC_VER
#static SDL_version SDLCALL GPU_GetCompiledVersion(void)
##else
#static inline SDL_version SDLCALL GPU_GetCompiledVersion(void)
sub GPU_GetCompiledVersion(
                           ) is native(LIB) returns SDL_version is export { * }

#-From /root/piko/tmp/sdl-gpu/include/SDL_gpu.h:615
#DECLSPEC SDL_version SDLCALL GPU_GetLinkedVersion(void);
sub GPU_GetLinkedVersion(
                         ) is native(LIB) returns SDL_version is export { * }

#-From /root/piko/tmp/sdl-gpu/include/SDL_gpu.h:618
#/*! The window corresponding to 'windowID' will be used to create the rendering context instead of creating a new window. */
#DECLSPEC void SDLCALL GPU_SetInitWindow(Uint32 windowID);
sub GPU_SetInitWindow(uint32 $windowID # Typedef<Uint32>->|Typedef<uint32>->|unsigned int||
                      ) is native(LIB)  is export { * }

#-From /root/piko/tmp/sdl-gpu/include/SDL_gpu.h:621
#/*! Returns the window ID that has been set via GPU_SetInitWindow(). */
#DECLSPEC Uint32 SDLCALL GPU_GetInitWindow(void);
sub GPU_GetInitWindow(
                      ) is native(LIB) returns uint32 is export { * }

#-From /root/piko/tmp/sdl-gpu/include/SDL_gpu.h:625
#/*! Set special flags to use for initialization. Set these before calling GPU_Init().
# * \param GPU_flags An OR'ed combination of GPU_InitFlagEnum flags.  Default flags (0) enable late swap vsync and double buffering. */
#DECLSPEC void SDLCALL GPU_SetPreInitFlags(GPU_InitFlagEnum GPU_flags);
sub GPU_SetPreInitFlags(uint32 $GPU_flags # Typedef<GPU_InitFlagEnum>->|Typedef<Uint32>->|Typedef<uint32>->|unsigned int|||
                        ) is native(LIB)  is export { * }

#-From /root/piko/tmp/sdl-gpu/include/SDL_gpu.h:628
#/*! Returns the current special flags to use for initialization. */
#DECLSPEC GPU_InitFlagEnum SDLCALL GPU_GetPreInitFlags(void);
sub GPU_GetPreInitFlags(
                        ) is native(LIB) returns uint32 is export { * }

#-From /root/piko/tmp/sdl-gpu/include/SDL_gpu.h:632
#/*! Set required features to use for initialization. Set these before calling GPU_Init().
# * \param features An OR'ed combination of GPU_FeatureEnum flags.  Required features will force GPU_Init() to create a renderer that supports all of the given flags or else fail. */
#DECLSPEC void SDLCALL GPU_SetRequiredFeatures(GPU_FeatureEnum features);
sub GPU_SetRequiredFeatures(uint32 $features # Typedef<GPU_FeatureEnum>->|Typedef<Uint32>->|Typedef<uint32>->|unsigned int|||
                            ) is native(LIB)  is export { * }

#-From /root/piko/tmp/sdl-gpu/include/SDL_gpu.h:635
#/*! Returns the current required features to use for initialization. */
#DECLSPEC GPU_FeatureEnum SDLCALL GPU_GetRequiredFeatures(void);
sub GPU_GetRequiredFeatures(
                            ) is native(LIB) returns uint32 is export { * }

#-From /root/piko/tmp/sdl-gpu/include/SDL_gpu.h:638
#/*! Gets the default initialization renderer IDs for the current platform copied into the 'order' array and the number of renderer IDs into 'order_size'.  Pass NULL for 'order' to just get the size of the renderer order array.  Will return at most GPU_RENDERER_ORDER_MAX renderers. */
#DECLSPEC void SDLCALL GPU_GetDefaultRendererOrder(int* order_size, GPU_RendererID* order);
sub GPU_GetDefaultRendererOrder(Pointer[int32]                $order_size # int*
                               ,GPU_RendererID                $order # Typedef<GPU_RendererID>->|GPU_RendererID|*
                                ) is native(LIB)  is export { * }

#-From /root/piko/tmp/sdl-gpu/include/SDL_gpu.h:641
#/*! Gets the current renderer ID order for initialization copied into the 'order' array and the number of renderer IDs into 'order_size'.  Pass NULL for 'order' to just get the size of the renderer order array. */
#DECLSPEC void SDLCALL GPU_GetRendererOrder(int* order_size, GPU_RendererID* order);
sub GPU_GetRendererOrder(Pointer[int32]                $order_size # int*
                        ,GPU_RendererID                $order # Typedef<GPU_RendererID>->|GPU_RendererID|*
                         ) is native(LIB)  is export { * }

#-From /root/piko/tmp/sdl-gpu/include/SDL_gpu.h:644
#/*! Sets the renderer ID order to use for initialization.  If 'order' is NULL, it will restore the default order. */
#DECLSPEC void SDLCALL GPU_SetRendererOrder(int order_size, GPU_RendererID* order);
sub GPU_SetRendererOrder(int32                         $order_size # int
                        ,GPU_RendererID                $order # Typedef<GPU_RendererID>->|GPU_RendererID|*
                         ) is native(LIB)  is export { * }

#-From /root/piko/tmp/sdl-gpu/include/SDL_gpu.h:649
#/*! Initializes SDL and SDL_gpu.  Creates a window and goes through the renderer order to create a renderer context.
# * \see GPU_SetRendererOrder()
# */
#DECLSPEC GPU_Target* SDLCALL GPU_Init(Uint16 w, Uint16 h, GPU_WindowFlagEnum SDL_flags);
sub GPU_Init(uint16                      $w # Typedef<Uint16>->|Typedef<uint16>->|short unsigned int||
            ,uint16                      $h # Typedef<Uint16>->|Typedef<uint16>->|short unsigned int||
            ,uint32                      $SDL_flags # Typedef<GPU_WindowFlagEnum>->|Typedef<Uint32>->|Typedef<uint32>->|unsigned int|||
             ) is native(LIB) returns GPU_Target is export { * }

#-From /root/piko/tmp/sdl-gpu/include/SDL_gpu.h:652
#/*! Initializes SDL and SDL_gpu.  Creates a window and the requested renderer context. */
#DECLSPEC GPU_Target* SDLCALL GPU_InitRenderer(GPU_RendererEnum renderer_enum, Uint16 w, Uint16 h, GPU_WindowFlagEnum SDL_flags);
sub GPU_InitRenderer(uint32                      $renderer_enum # Typedef<GPU_RendererEnum>->|Typedef<Uint32>->|Typedef<uint32>->|unsigned int|||
                    ,uint16                      $w # Typedef<Uint16>->|Typedef<uint16>->|short unsigned int||
                    ,uint16                      $h # Typedef<Uint16>->|Typedef<uint16>->|short unsigned int||
                    ,uint32                      $SDL_flags # Typedef<GPU_WindowFlagEnum>->|Typedef<Uint32>->|Typedef<uint32>->|unsigned int|||
                     ) is native(LIB) returns GPU_Target is export { * }

#-From /root/piko/tmp/sdl-gpu/include/SDL_gpu.h:658
#/*! Initializes SDL and SDL_gpu.  Creates a window and the requested renderer context.
# * By requesting a renderer via ID, you can specify the major and minor versions of an individual renderer backend.
# * \see GPU_MakeRendererID
# */
#DECLSPEC GPU_Target* SDLCALL GPU_InitRendererByID(GPU_RendererID renderer_request, Uint16 w, Uint16 h, GPU_WindowFlagEnum SDL_flags);
sub GPU_InitRendererByID(GPU_RendererID                $renderer_request # Typedef<GPU_RendererID>->|GPU_RendererID|
                        ,uint16                      $w # Typedef<Uint16>->|Typedef<uint16>->|short unsigned int||
                        ,uint16                      $h # Typedef<Uint16>->|Typedef<uint16>->|short unsigned int||
                        ,uint32                      $SDL_flags # Typedef<GPU_WindowFlagEnum>->|Typedef<Uint32>->|Typedef<uint32>->|unsigned int|||
                         ) is native(LIB) returns GPU_Target is export { * }

#-From /root/piko/tmp/sdl-gpu/include/SDL_gpu.h:664
#/*! Checks for important GPU features which may not be supported depending on a device's extension support.  Feature flags (GPU_FEATURE_*) can be bitwise OR'd together. 
# * \return 1 if all of the passed features are enabled/supported
# * \return 0 if any of the passed features are disabled/unsupported
# */
#DECLSPEC Uint8 SDLCALL GPU_IsFeatureEnabled(GPU_FeatureEnum feature);
sub GPU_IsFeatureEnabled(uint32 $feature # Typedef<GPU_FeatureEnum>->|Typedef<Uint32>->|Typedef<uint32>->|unsigned int|||
                         ) is native(LIB) returns uint8 is export { * }

#-From /root/piko/tmp/sdl-gpu/include/SDL_gpu.h:667
#/*! Clean up the renderer state. */
#DECLSPEC void SDLCALL GPU_CloseCurrentRenderer(void);
sub GPU_CloseCurrentRenderer(
                             ) is native(LIB)  is export { * }

#-From /root/piko/tmp/sdl-gpu/include/SDL_gpu.h:670
#/*! Clean up the renderer state and shut down SDL_gpu. */
#DECLSPEC void SDLCALL GPU_Quit(void);
sub GPU_Quit(
             ) is native(LIB)  is export { * }

#-From /root/piko/tmp/sdl-gpu/include/SDL_gpu.h:689
#/*! Sets the global debug level.
# * GPU_DEBUG_LEVEL_0: Normal
# * GPU_DEBUG_LEVEL_1: Prints messages when errors are pushed via GPU_PushErrorCode()
# * GPU_DEBUG_LEVEL_2: Elevates warning logs to error priority
# * GPU_DEBUG_LEVEL_3: Elevates info logs to error priority
# */
#DECLSPEC void SDLCALL GPU_SetDebugLevel(GPU_DebugLevelEnum level);
sub GPU_SetDebugLevel(int32 $level # GPU_DebugLevelEnum
                      ) is native(LIB)  is export { * }

#-From /root/piko/tmp/sdl-gpu/include/SDL_gpu.h:692
#/*! Returns the current global debug level. */
#DECLSPEC GPU_DebugLevelEnum SDLCALL GPU_GetDebugLevel(void);
sub GPU_GetDebugLevel(
                      ) is native(LIB) returns int32 is export { * }

#-From /root/piko/tmp/sdl-gpu/include/SDL_gpu.h:695
#/*! Prints an informational log message. */
#DECLSPEC void SDLCALL GPU_LogInfo(const char* format, ...);
sub GPU_LogInfo(Str $format # const char*
                ) is native(LIB)  is export { * }

#-From /root/piko/tmp/sdl-gpu/include/SDL_gpu.h:698
#/*! Prints a warning log message. */
#DECLSPEC void SDLCALL GPU_LogWarning(const char* format, ...);
sub GPU_LogWarning(Str $format # const char*
                   ) is native(LIB)  is export { * }

#-From /root/piko/tmp/sdl-gpu/include/SDL_gpu.h:701
#/*! Prints an error log message. */
#DECLSPEC void SDLCALL GPU_LogError(const char* format, ...);
sub GPU_LogError(Str $format # const char*
                 ) is native(LIB)  is export { * }

#-From /root/piko/tmp/sdl-gpu/include/SDL_gpu.h:704
#/*! Sets a custom callback for handling logging.  Use stdio's vsnprintf() to process the va_list into a string.  Passing NULL as the callback will reset to the default internal logging. */
#DECLSPEC void SDLCALL GPU_SetLogCallback(int (*callback)(GPU_LogLevelEnum log_level, const char* format, va_list args));
sub GPU_SetLogCallback(&callback (int32, Str, Str --> int32) # F:int ( GPU_LogLevelEnum, const char*, Typedef<va_list>->|Typedef<__gnuc_va_list>->|char*||)*
                       ) is native(LIB)  is export { * }

#-From /root/piko/tmp/sdl-gpu/include/SDL_gpu.h:711
#/*! Pushes a new error code into the error queue.  If the queue is full, the queue is not modified.
# * \param function The name of the function that pushed the error
# * \param error The error code to push on the error queue
# * \param details Additional information string, can be NULL.
# */
#DECLSPEC void SDLCALL GPU_PushErrorCode(const char* function, GPU_ErrorEnum error, const char* details, ...);
sub GPU_PushErrorCode(Str                           $function # const char*
                     ,int32                         $error # GPU_ErrorEnum
                     ,Str                           $details # const char*
                      ) is native(LIB)  is export { * }

#-From /root/piko/tmp/sdl-gpu/include/SDL_gpu.h:714
#/*! Pops an error object from the error queue and returns it.  If the error queue is empty, it returns an error object with NULL function, GPU_ERROR_NONE error, and NULL details. */
#DECLSPEC GPU_ErrorObject SDLCALL GPU_PopErrorCode(void);
sub GPU_PopErrorCode(
                     ) is native(LIB) returns GPU_ErrorObject is export { * }

#-From /root/piko/tmp/sdl-gpu/include/SDL_gpu.h:717
#/*! Gets the string representation of an error code. */
#DECLSPEC const char* SDLCALL GPU_GetErrorString(GPU_ErrorEnum error);
sub GPU_GetErrorString(int32 $error # GPU_ErrorEnum
                       ) is native(LIB) returns Str is export { * }

#-From /root/piko/tmp/sdl-gpu/include/SDL_gpu.h:720
#/*! Changes the maximum number of error objects that SDL_gpu will store.  This deletes all currently stored errors. */
#DECLSPEC void SDLCALL GPU_SetErrorQueueMax(unsigned int max);
sub GPU_SetErrorQueueMax(uint32 $max # unsigned int
                         ) is native(LIB)  is export { * }

#-From /root/piko/tmp/sdl-gpu/include/SDL_gpu.h:735
#/*! Returns an initialized GPU_RendererID. */
#DECLSPEC GPU_RendererID SDLCALL GPU_MakeRendererID(const char* name, GPU_RendererEnum renderer, int major_version, int minor_version);
sub GPU_MakeRendererID(Str                           $name # const char*
                      ,uint32                      $renderer # Typedef<GPU_RendererEnum>->|Typedef<Uint32>->|Typedef<uint32>->|unsigned int|||
                      ,int32                         $major_version # int
                      ,int32                         $minor_version # int
                       ) is native(LIB) returns GPU_RendererID is export { * }

#-From /root/piko/tmp/sdl-gpu/include/SDL_gpu.h:738
#/*! Gets the first registered renderer identifier for the given enum value. */
#DECLSPEC GPU_RendererID SDLCALL GPU_GetRendererID(GPU_RendererEnum renderer);
sub GPU_GetRendererID(uint32 $renderer # Typedef<GPU_RendererEnum>->|Typedef<Uint32>->|Typedef<uint32>->|unsigned int|||
                      ) is native(LIB) returns GPU_RendererID is export { * }

#-From /root/piko/tmp/sdl-gpu/include/SDL_gpu.h:741
#/*! Gets the number of registered (available) renderers. */
#DECLSPEC int SDLCALL GPU_GetNumRegisteredRenderers(void);
sub GPU_GetNumRegisteredRenderers(
                                  ) is native(LIB) returns int32 is export { * }

#-From /root/piko/tmp/sdl-gpu/include/SDL_gpu.h:744
#/*! Gets an array of identifiers for the registered (available) renderers. */
#DECLSPEC void SDLCALL GPU_GetRegisteredRendererList(GPU_RendererID* renderers_array);
sub GPU_GetRegisteredRendererList(GPU_RendererID $renderers_array # Typedef<GPU_RendererID>->|GPU_RendererID|*
                                  ) is native(LIB)  is export { * }

#-From /root/piko/tmp/sdl-gpu/include/SDL_gpu.h:747
#/*! Prepares a renderer for use by SDL_gpu. */
#DECLSPEC void SDLCALL GPU_RegisterRenderer(GPU_RendererID id, GPU_Renderer* (SDLCALL *create_renderer)(GPU_RendererID request), void (SDLCALL *free_renderer)(GPU_Renderer* renderer));
sub GPU_RegisterRenderer(GPU_RendererID                $id # Typedef<GPU_RendererID>->|GPU_RendererID|
                        ,&create_renderer (GPU_RendererID --> GPU_Renderer) # F:Typedef<GPU_Renderer>->|GPU_Renderer|* ( Typedef<GPU_RendererID>->|GPU_RendererID|)*
                        ,&free_renderer (GPU_Renderer) # F:void ( Typedef<GPU_Renderer>->|GPU_Renderer|*)*
                         ) is native(LIB)  is export { * }

#-From /root/piko/tmp/sdl-gpu/include/SDL_gpu.h:758
#/*! Gets the next enum ID that can be used for a custom renderer. */
#DECLSPEC GPU_RendererEnum SDLCALL GPU_ReserveNextRendererEnum(void);
sub GPU_ReserveNextRendererEnum(
                                ) is native(LIB) returns uint32 is export { * }

#-From /root/piko/tmp/sdl-gpu/include/SDL_gpu.h:761
#/*! Gets the number of active (created) renderers. */
#DECLSPEC int SDLCALL GPU_GetNumActiveRenderers(void);
sub GPU_GetNumActiveRenderers(
                              ) is native(LIB) returns int32 is export { * }

#-From /root/piko/tmp/sdl-gpu/include/SDL_gpu.h:764
#/*! Gets an array of identifiers for the active renderers. */
#DECLSPEC void SDLCALL GPU_GetActiveRendererList(GPU_RendererID* renderers_array);
sub GPU_GetActiveRendererList(GPU_RendererID $renderers_array # Typedef<GPU_RendererID>->|GPU_RendererID|*
                              ) is native(LIB)  is export { * }

#-From /root/piko/tmp/sdl-gpu/include/SDL_gpu.h:767
#/*! \return The current renderer */
#DECLSPEC GPU_Renderer* SDLCALL GPU_GetCurrentRenderer(void);
sub GPU_GetCurrentRenderer(
                           ) is native(LIB) returns GPU_Renderer is export { * }

#-From /root/piko/tmp/sdl-gpu/include/SDL_gpu.h:770
#/*! Switches the current renderer to the renderer matching the given identifier. */
#DECLSPEC void SDLCALL GPU_SetCurrentRenderer(GPU_RendererID id);
sub GPU_SetCurrentRenderer(GPU_RendererID $id # Typedef<GPU_RendererID>->|GPU_RendererID|
                           ) is native(LIB)  is export { * }

#-From /root/piko/tmp/sdl-gpu/include/SDL_gpu.h:773
#/*! \return The renderer matching the given identifier. */
#DECLSPEC GPU_Renderer* SDLCALL GPU_GetRenderer(GPU_RendererID id);
sub GPU_GetRenderer(GPU_RendererID $id # Typedef<GPU_RendererID>->|GPU_RendererID|
                    ) is native(LIB) returns GPU_Renderer is export { * }

#-From /root/piko/tmp/sdl-gpu/include/SDL_gpu.h:775
#DECLSPEC void SDLCALL GPU_FreeRenderer(GPU_Renderer* renderer);
sub GPU_FreeRenderer(GPU_Renderer $renderer # Typedef<GPU_Renderer>->|GPU_Renderer|*
                     ) is native(LIB)  is export { * }

#-From /root/piko/tmp/sdl-gpu/include/SDL_gpu.h:778
#/*! Reapplies the renderer state to the backend API (e.g. OpenGL, Direct3D).  Use this if you want SDL_gpu to be able to render after you've used direct backend calls. */
#DECLSPEC void SDLCALL GPU_ResetRendererState(void);
sub GPU_ResetRendererState(
                           ) is native(LIB)  is export { * }

#-From /root/piko/tmp/sdl-gpu/include/SDL_gpu.h:783
#/*! Sets the coordinate mode for this renderer.  Target and image coordinates will be either "inverted" (0,0 is the upper left corner, y increases downward) or "mathematical" (0,0 is the bottom-left corner, y increases upward).
# * The default is inverted (0), as this is traditional for 2D graphics.
# * \param inverted 0 is for inverted coordinates, 1 is for mathematical coordinates */
#DECLSPEC void SDLCALL GPU_SetCoordinateMode(Uint8 use_math_coords);
sub GPU_SetCoordinateMode(uint8 $use_math_coords # Typedef<Uint8>->|Typedef<uint8>->|unsigned char||
                          ) is native(LIB)  is export { * }

#-From /root/piko/tmp/sdl-gpu/include/SDL_gpu.h:785
#DECLSPEC Uint8 SDLCALL GPU_GetCoordinateMode(void);
sub GPU_GetCoordinateMode(
                          ) is native(LIB) returns uint8 is export { * }

#-From /root/piko/tmp/sdl-gpu/include/SDL_gpu.h:799
#/*! \return The renderer's current context target. */
#DECLSPEC GPU_Target* SDLCALL GPU_GetContextTarget(void);
sub GPU_GetContextTarget(
                         ) is native(LIB) returns GPU_Target is export { * }

#-From /root/piko/tmp/sdl-gpu/include/SDL_gpu.h:802
#/*! \return The target that is associated with the given windowID. */
#DECLSPEC GPU_Target* SDLCALL GPU_GetWindowTarget(Uint32 windowID);
sub GPU_GetWindowTarget(uint32 $windowID # Typedef<Uint32>->|Typedef<uint32>->|unsigned int||
                        ) is native(LIB) returns GPU_Target is export { * }

#-From /root/piko/tmp/sdl-gpu/include/SDL_gpu.h:805
#/*! Creates a separate context for the given window using the current renderer and returns a GPU_Target that represents it. */
#DECLSPEC GPU_Target* SDLCALL GPU_CreateTargetFromWindow(Uint32 windowID);
sub GPU_CreateTargetFromWindow(uint32 $windowID # Typedef<Uint32>->|Typedef<uint32>->|unsigned int||
                               ) is native(LIB) returns GPU_Target is export { * }

#-From /root/piko/tmp/sdl-gpu/include/SDL_gpu.h:811
#/*! Makes the given window the current rendering destination for the given context target.
# * This also makes the target the current context for image loading and window operations.
# * If the target does not represent a window, this does nothing.
# */
#DECLSPEC void SDLCALL GPU_MakeCurrent(GPU_Target* target, Uint32 windowID);
sub GPU_MakeCurrent(GPU_Target                    $target # Typedef<GPU_Target>->|GPU_Target|*
                   ,uint32                      $windowID # Typedef<Uint32>->|Typedef<uint32>->|unsigned int||
                    ) is native(LIB)  is export { * }

#-From /root/piko/tmp/sdl-gpu/include/SDL_gpu.h:815
#/*! Change the actual size of the current context target's window.  This resets the virtual resolution and viewport of the context target.
# * Aside from direct resolution changes, this should also be called in response to SDL_WINDOWEVENT_RESIZED window events for resizable windows. */
#DECLSPEC Uint8 SDLCALL GPU_SetWindowResolution(Uint16 w, Uint16 h);
sub GPU_SetWindowResolution(uint16                      $w # Typedef<Uint16>->|Typedef<uint16>->|short unsigned int||
                           ,uint16                      $h # Typedef<Uint16>->|Typedef<uint16>->|short unsigned int||
                            ) is native(LIB) returns uint8 is export { * }

#-From /root/piko/tmp/sdl-gpu/include/SDL_gpu.h:822
#/*! Enable/disable fullscreen mode for the current context target's window.
# * On some platforms, this may destroy the renderer context and require that textures be reloaded.  Unfortunately, SDL does not provide a notification mechanism for this.
# * \param enable_fullscreen If true, make the application go fullscreen.  If false, make the application go to windowed mode.
# * \param use_desktop_resolution If true, lets the window change its resolution when it enters fullscreen mode (via SDL_WINDOW_FULLSCREEN_DESKTOP).
# * \return 0 if the new mode is windowed, 1 if the new mode is fullscreen.  */
#DECLSPEC Uint8 SDLCALL GPU_SetFullscreen(Uint8 enable_fullscreen, Uint8 use_desktop_resolution);
sub GPU_SetFullscreen(uint8                       $enable_fullscreen # Typedef<Uint8>->|Typedef<uint8>->|unsigned char||
                     ,uint8                       $use_desktop_resolution # Typedef<Uint8>->|Typedef<uint8>->|unsigned char||
                      ) is native(LIB) returns uint8 is export { * }

#-From /root/piko/tmp/sdl-gpu/include/SDL_gpu.h:825
#/*! Returns true if the current context target's window is in fullscreen mode. */
#DECLSPEC Uint8 SDLCALL GPU_GetFullscreen(void);
sub GPU_GetFullscreen(
                      ) is native(LIB) returns uint8 is export { * }

#-From /root/piko/tmp/sdl-gpu/include/SDL_gpu.h:828
#/*! Enables/disables alpha blending for shape rendering on the current window. */
#DECLSPEC void SDLCALL GPU_SetShapeBlending(Uint8 enable);
sub GPU_SetShapeBlending(uint8 $enable # Typedef<Uint8>->|Typedef<uint8>->|unsigned char||
                         ) is native(LIB)  is export { * }

#-From /root/piko/tmp/sdl-gpu/include/SDL_gpu.h:831
#/*! Translates a blend preset into a blend mode. */
#DECLSPEC GPU_BlendMode SDLCALL GPU_GetBlendModeFromPreset(GPU_BlendPresetEnum preset);
sub GPU_GetBlendModeFromPreset(int32 $preset # GPU_BlendPresetEnum
                               ) is native(LIB) returns GPU_BlendMode is export { * }

#-From /root/piko/tmp/sdl-gpu/include/SDL_gpu.h:834
#/*! Sets the blending component functions for shape rendering. */
#DECLSPEC void SDLCALL GPU_SetShapeBlendFunction(GPU_BlendFuncEnum source_color, GPU_BlendFuncEnum dest_color, GPU_BlendFuncEnum source_alpha, GPU_BlendFuncEnum dest_alpha);
sub GPU_SetShapeBlendFunction(int32                         $source_color # GPU_BlendFuncEnum
                             ,int32                         $dest_color # GPU_BlendFuncEnum
                             ,int32                         $source_alpha # GPU_BlendFuncEnum
                             ,int32                         $dest_alpha # GPU_BlendFuncEnum
                              ) is native(LIB)  is export { * }

#-From /root/piko/tmp/sdl-gpu/include/SDL_gpu.h:837
#/*! Sets the blending component equations for shape rendering. */
#DECLSPEC void SDLCALL GPU_SetShapeBlendEquation(GPU_BlendEqEnum color_equation, GPU_BlendEqEnum alpha_equation);
sub GPU_SetShapeBlendEquation(int32                         $color_equation # GPU_BlendEqEnum
                             ,int32                         $alpha_equation # GPU_BlendEqEnum
                              ) is native(LIB)  is export { * }

#-From /root/piko/tmp/sdl-gpu/include/SDL_gpu.h:840
#	
#/*! Sets the blending mode for shape rendering on the current window, if supported by the renderer. */
#DECLSPEC void SDLCALL GPU_SetShapeBlendMode(GPU_BlendPresetEnum mode);
sub GPU_SetShapeBlendMode(int32 $mode # GPU_BlendPresetEnum
                          ) is native(LIB)  is export { * }

#-From /root/piko/tmp/sdl-gpu/include/SDL_gpu.h:846
#/*! Sets the thickness of lines for the current context. 
# * \param thickness New line thickness in pixels measured across the line.  Default is 1.0f.
# * \return The old thickness value
# */
#DECLSPEC float SDLCALL GPU_SetLineThickness(float thickness);
sub GPU_SetLineThickness(num32 $thickness # float
                         ) is native(LIB) returns num32 is export { * }

#-From /root/piko/tmp/sdl-gpu/include/SDL_gpu.h:849
#/*! Returns the current line thickness value. */
#DECLSPEC float SDLCALL GPU_GetLineThickness(void);
sub GPU_GetLineThickness(
                         ) is native(LIB) returns num32 is export { * }

#-From /root/piko/tmp/sdl-gpu/include/SDL_gpu.h:862
#/*! Creates a target that aliases the given target.  Aliases can be used to store target settings (e.g. viewports) for easy switching.
# * GPU_FreeTarget() frees the alias's memory, but does not affect the original. */
#DECLSPEC GPU_Target* SDLCALL GPU_CreateAliasTarget(GPU_Target* target);
sub GPU_CreateAliasTarget(GPU_Target $target # Typedef<GPU_Target>->|GPU_Target|*
                          ) is native(LIB) returns GPU_Target is export { * }

#-From /root/piko/tmp/sdl-gpu/include/SDL_gpu.h:865
#/*! Creates a new render target from the given image.  It can then be accessed from image->target. */
#DECLSPEC GPU_Target* SDLCALL GPU_LoadTarget(GPU_Image* image);
sub GPU_LoadTarget(GPU_Image $image # Typedef<GPU_Image>->|GPU_Image|*
                   ) is native(LIB) returns GPU_Target is export { * }

#-From /root/piko/tmp/sdl-gpu/include/SDL_gpu.h:868
#/*! Deletes a render target in the proper way for this renderer. */
#DECLSPEC void SDLCALL GPU_FreeTarget(GPU_Target* target);
sub GPU_FreeTarget(GPU_Target $target # Typedef<GPU_Target>->|GPU_Target|*
                   ) is native(LIB)  is export { * }

#-From /root/piko/tmp/sdl-gpu/include/SDL_gpu.h:871
#/*! Change the logical size of the given target.  Rendering to this target will be scaled as if the dimensions were actually the ones given. */
#DECLSPEC void SDLCALL GPU_SetVirtualResolution(GPU_Target* target, Uint16 w, Uint16 h);
sub GPU_SetVirtualResolution(GPU_Target                    $target # Typedef<GPU_Target>->|GPU_Target|*
                            ,uint16                      $w # Typedef<Uint16>->|Typedef<uint16>->|short unsigned int||
                            ,uint16                      $h # Typedef<Uint16>->|Typedef<uint16>->|short unsigned int||
                             ) is native(LIB)  is export { * }

#-From /root/piko/tmp/sdl-gpu/include/SDL_gpu.h:874
#/*! Query the logical size of the given target. */
#DECLSPEC void SDLCALL GPU_GetVirtualResolution(GPU_Target* target, Uint16* w, Uint16* h);
sub GPU_GetVirtualResolution(GPU_Target                    $target # Typedef<GPU_Target>->|GPU_Target|*
                            ,Pointer[uint16]             $w # Typedef<Uint16>->|Typedef<uint16>->|short unsigned int||*
                            ,Pointer[uint16]             $h # Typedef<Uint16>->|Typedef<uint16>->|short unsigned int||*
                             ) is native(LIB)  is export { * }

#-From /root/piko/tmp/sdl-gpu/include/SDL_gpu.h:877
#/*! Converts screen space coordinates (such as from mouse input) to logical drawing coordinates. */
#DECLSPEC void SDLCALL GPU_GetVirtualCoords(GPU_Target* target, float* x, float* y, float displayX, float displayY);
sub GPU_GetVirtualCoords(GPU_Target                    $target # Typedef<GPU_Target>->|GPU_Target|*
                        ,Pointer[num32]                $x # float*
                        ,Pointer[num32]                $y # float*
                        ,num32                         $displayX # float
                        ,num32                         $displayY # float
                         ) is native(LIB)  is export { * }

#-From /root/piko/tmp/sdl-gpu/include/SDL_gpu.h:880
#/*! Reset the logical size of the given target to its original value. */
#DECLSPEC void SDLCALL GPU_UnsetVirtualResolution(GPU_Target* target);
sub GPU_UnsetVirtualResolution(GPU_Target $target # Typedef<GPU_Target>->|GPU_Target|*
                               ) is native(LIB)  is export { * }

#-From /root/piko/tmp/sdl-gpu/include/SDL_gpu.h:883
#/*! \return A GPU_Rect with the given values. */
#DECLSPEC GPU_Rect SDLCALL GPU_MakeRect(float x, float y, float w, float h);
sub GPU_MakeRect(num32                         $x # float
                ,num32                         $y # float
                ,num32                         $w # float
                ,num32                         $h # float
                 ) is native(LIB) returns GPU_Rect is export { * }

#-From /root/piko/tmp/sdl-gpu/include/SDL_gpu.h:886
#/*! \return An SDL_Color with the given values. */
#DECLSPEC SDL_Color SDLCALL GPU_MakeColor(Uint8 r, Uint8 g, Uint8 b, Uint8 a);
sub GPU_MakeColor(uint8                       $r # Typedef<Uint8>->|Typedef<uint8>->|unsigned char||
                 ,uint8                       $g # Typedef<Uint8>->|Typedef<uint8>->|unsigned char||
                 ,uint8                       $b # Typedef<Uint8>->|Typedef<uint8>->|unsigned char||
                 ,uint8                       $a # Typedef<Uint8>->|Typedef<uint8>->|unsigned char||
                  ) is native(LIB) returns SDL_Color is export { * }

#-From /root/piko/tmp/sdl-gpu/include/SDL_gpu.h:889
#/*! Sets the given target's viewport. */
#DECLSPEC void SDLCALL GPU_SetViewport(GPU_Target* target, GPU_Rect viewport);
sub GPU_SetViewport(GPU_Target                    $target # Typedef<GPU_Target>->|GPU_Target|*
                   ,GPU_Rect                      $viewport # Typedef<GPU_Rect>->|GPU_Rect|
                    ) is native(LIB)  is export { * }

#-From /root/piko/tmp/sdl-gpu/include/SDL_gpu.h:892
#/*! Resets the given target's viewport to the entire target area. */
#DECLSPEC void SDLCALL GPU_UnsetViewport(GPU_Target* target);
sub GPU_UnsetViewport(GPU_Target $target # Typedef<GPU_Target>->|GPU_Target|*
                      ) is native(LIB)  is export { * }

#-From /root/piko/tmp/sdl-gpu/include/SDL_gpu.h:895
#/*! \return A GPU_Camera with position (0, 0, -10), angle of 0, and zoom of 1. */
#DECLSPEC GPU_Camera SDLCALL GPU_GetDefaultCamera(void);
sub GPU_GetDefaultCamera(
                         ) is native(LIB) returns GPU_Camera is export { * }

#-From /root/piko/tmp/sdl-gpu/include/SDL_gpu.h:898
#/*! \return The camera of the given render target.  If target is NULL, returns the default camera. */
#DECLSPEC GPU_Camera SDLCALL GPU_GetCamera(GPU_Target* target);
sub GPU_GetCamera(GPU_Target $target # Typedef<GPU_Target>->|GPU_Target|*
                  ) is native(LIB) returns GPU_Camera is export { * }

#-From /root/piko/tmp/sdl-gpu/include/SDL_gpu.h:904
#/*! Sets the current render target's current camera.
# * \param target A pointer to the target that will copy this camera.
# * \param cam A pointer to the camera data to use or NULL to use the default camera.
# * \return The old camera. */
#DECLSPEC GPU_Camera SDLCALL GPU_SetCamera(GPU_Target* target, GPU_Camera* cam);
sub GPU_SetCamera(GPU_Target                    $target # Typedef<GPU_Target>->|GPU_Target|*
                 ,GPU_Camera                    $cam # Typedef<GPU_Camera>->|GPU_Camera|*
                  ) is native(LIB) returns GPU_Camera is export { * }

#-From /root/piko/tmp/sdl-gpu/include/SDL_gpu.h:907
#/*! Enables or disables using the built-in camera matrix transforms. */
#DECLSPEC void SDLCALL GPU_EnableCamera(GPU_Target* target, Uint8 use_camera);
sub GPU_EnableCamera(GPU_Target                    $target # Typedef<GPU_Target>->|GPU_Target|*
                    ,uint8                       $use_camera # Typedef<Uint8>->|Typedef<uint8>->|unsigned char||
                     ) is native(LIB)  is export { * }

#-From /root/piko/tmp/sdl-gpu/include/SDL_gpu.h:910
#/*! Returns 1 if the camera transforms are enabled, 0 otherwise. */
#DECLSPEC Uint8 SDLCALL GPU_IsCameraEnabled(GPU_Target* target);
sub GPU_IsCameraEnabled(GPU_Target $target # Typedef<GPU_Target>->|GPU_Target|*
                        ) is native(LIB) returns uint8 is export { * }

#-From /root/piko/tmp/sdl-gpu/include/SDL_gpu.h:913
#/*! \return The RGBA color of a pixel. */
#DECLSPEC SDL_Color SDLCALL GPU_GetPixel(GPU_Target* target, Sint16 x, Sint16 y);
sub GPU_GetPixel(GPU_Target                    $target # Typedef<GPU_Target>->|GPU_Target|*
                ,int16                       $x # Typedef<Sint16>->|Typedef<int16>->|short int||
                ,int16                       $y # Typedef<Sint16>->|Typedef<int16>->|short int||
                 ) is native(LIB) returns SDL_Color is export { * }

#-From /root/piko/tmp/sdl-gpu/include/SDL_gpu.h:916
#/*! Sets the clipping rect for the given render target. */
#DECLSPEC GPU_Rect SDLCALL GPU_SetClipRect(GPU_Target* target, GPU_Rect rect);
sub GPU_SetClipRect(GPU_Target                    $target # Typedef<GPU_Target>->|GPU_Target|*
                   ,GPU_Rect                      $rect # Typedef<GPU_Rect>->|GPU_Rect|
                    ) is native(LIB) returns GPU_Rect is export { * }

#-From /root/piko/tmp/sdl-gpu/include/SDL_gpu.h:919
#/*! Sets the clipping rect for the given render target. */
#DECLSPEC GPU_Rect SDLCALL GPU_SetClip(GPU_Target* target, Sint16 x, Sint16 y, Uint16 w, Uint16 h);
sub GPU_SetClip(GPU_Target                    $target # Typedef<GPU_Target>->|GPU_Target|*
               ,int16                       $x # Typedef<Sint16>->|Typedef<int16>->|short int||
               ,int16                       $y # Typedef<Sint16>->|Typedef<int16>->|short int||
               ,uint16                      $w # Typedef<Uint16>->|Typedef<uint16>->|short unsigned int||
               ,uint16                      $h # Typedef<Uint16>->|Typedef<uint16>->|short unsigned int||
                ) is native(LIB) returns GPU_Rect is export { * }

#-From /root/piko/tmp/sdl-gpu/include/SDL_gpu.h:922
#/*! Turns off clipping for the given target. */
#DECLSPEC void SDLCALL GPU_UnsetClip(GPU_Target* target);
sub GPU_UnsetClip(GPU_Target $target # Typedef<GPU_Target>->|GPU_Target|*
                  ) is native(LIB)  is export { * }

#-From /root/piko/tmp/sdl-gpu/include/SDL_gpu.h:929
# *  Would make the image draw with color of roughly (128, 64, 0).
# */
#DECLSPEC void SDLCALL GPU_SetTargetColor(GPU_Target* target, SDL_Color color);
sub GPU_SetTargetColor(GPU_Target                    $target # Typedef<GPU_Target>->|GPU_Target|*
                      ,SDL_Color                     $color # Typedef<SDL_Color>->|SDL_Color|
                       ) is native(LIB)  is export { * }

#-From /root/piko/tmp/sdl-gpu/include/SDL_gpu.h:936
# *  Would make the image draw with color of roughly (128, 64, 0).
# */
#DECLSPEC void SDLCALL GPU_SetTargetRGB(GPU_Target* target, Uint8 r, Uint8 g, Uint8 b);
sub GPU_SetTargetRGB(GPU_Target                    $target # Typedef<GPU_Target>->|GPU_Target|*
                    ,uint8                       $r # Typedef<Uint8>->|Typedef<uint8>->|unsigned char||
                    ,uint8                       $g # Typedef<Uint8>->|Typedef<uint8>->|unsigned char||
                    ,uint8                       $b # Typedef<Uint8>->|Typedef<uint8>->|unsigned char||
                     ) is native(LIB)  is export { * }

#-From /root/piko/tmp/sdl-gpu/include/SDL_gpu.h:943
# *  Would make the image draw with color of roughly (128, 64, 0).
# */
#DECLSPEC void SDLCALL GPU_SetTargetRGBA(GPU_Target* target, Uint8 r, Uint8 g, Uint8 b, Uint8 a);
sub GPU_SetTargetRGBA(GPU_Target                    $target # Typedef<GPU_Target>->|GPU_Target|*
                     ,uint8                       $r # Typedef<Uint8>->|Typedef<uint8>->|unsigned char||
                     ,uint8                       $g # Typedef<Uint8>->|Typedef<uint8>->|unsigned char||
                     ,uint8                       $b # Typedef<Uint8>->|Typedef<uint8>->|unsigned char||
                     ,uint8                       $a # Typedef<Uint8>->|Typedef<uint8>->|unsigned char||
                      ) is native(LIB)  is export { * }

#-From /root/piko/tmp/sdl-gpu/include/SDL_gpu.h:948
#/*! Unsets the modulation color for subsequent drawing of images and shapes on the given target. 
# *  This has the same effect as coloring with pure opaque white (255, 255, 255, 255).
# */
#DECLSPEC void SDLCALL GPU_UnsetTargetColor(GPU_Target* target);
sub GPU_UnsetTargetColor(GPU_Target $target # Typedef<GPU_Target>->|GPU_Target|*
                         ) is native(LIB)  is export { * }

#-From /root/piko/tmp/sdl-gpu/include/SDL_gpu.h:959
#/*! Load surface from an image file that is supported by this renderer.  Don't forget to SDL_FreeSurface() it. */
#DECLSPEC SDL_Surface* SDLCALL GPU_LoadSurface(const char* filename);
sub GPU_LoadSurface(Str $filename # const char*
                    ) is native(LIB) returns SDL_Surface is export { * }

#-From /root/piko/tmp/sdl-gpu/include/SDL_gpu.h:962
#/*! Load surface from an image file in memory.  Don't forget to SDL_FreeSurface() it. */
#DECLSPEC SDL_Surface* SDLCALL GPU_LoadSurface_RW(SDL_RWops* rwops, Uint8 free_rwops);
sub GPU_LoadSurface_RW(SDL_RWops                     $rwops # Typedef<SDL_RWops>->|SDL_RWops|*
                      ,uint8                       $free_rwops # Typedef<Uint8>->|Typedef<uint8>->|unsigned char||
                       ) is native(LIB) returns SDL_Surface is export { * }

#-From /root/piko/tmp/sdl-gpu/include/SDL_gpu.h:967
#/*! Save surface to a file.
# * With a format of GPU_FILE_AUTO, the file type is deduced from the extension.  Supported formats are: png, bmp, tga.
# * Returns 0 on failure. */
#DECLSPEC Uint8 SDLCALL GPU_SaveSurface(SDL_Surface* surface, const char* filename, GPU_FileFormatEnum format);
sub GPU_SaveSurface(SDL_Surface                   $surface # Typedef<SDL_Surface>->|SDL_Surface|*
                   ,Str                           $filename # const char*
                   ,int32                         $format # GPU_FileFormatEnum
                    ) is native(LIB) returns uint8 is export { * }

#-From /root/piko/tmp/sdl-gpu/include/SDL_gpu.h:983
#/*! Create a new, blank image with the given format.  Don't forget to GPU_FreeImage() it.
#	 * \param w Image width in pixels
#	 * \param h Image height in pixels
#	 * \param format Format of color channels.
#	 */
#DECLSPEC GPU_Image* SDLCALL GPU_CreateImage(Uint16 w, Uint16 h, GPU_FormatEnum format);
sub GPU_CreateImage(uint16                      $w # Typedef<Uint16>->|Typedef<uint16>->|short unsigned int||
                   ,uint16                      $h # Typedef<Uint16>->|Typedef<uint16>->|short unsigned int||
                   ,int32                         $format # GPU_FormatEnum
                    ) is native(LIB) returns GPU_Image is export { * }

#-From /root/piko/tmp/sdl-gpu/include/SDL_gpu.h:986
#/*! Create a new image that uses the given native texture handle as the image texture. */
#DECLSPEC GPU_Image* SDLCALL GPU_CreateImageUsingTexture(Uint32 handle, Uint8 take_ownership);
sub GPU_CreateImageUsingTexture(uint32                      $handle # Typedef<Uint32>->|Typedef<uint32>->|unsigned int||
                               ,uint8                       $take_ownership # Typedef<Uint8>->|Typedef<uint8>->|unsigned char||
                                ) is native(LIB) returns GPU_Image is export { * }

#-From /root/piko/tmp/sdl-gpu/include/SDL_gpu.h:989
#/*! Load image from an image file that is supported by this renderer.  Don't forget to GPU_FreeImage() it. */
#DECLSPEC GPU_Image* SDLCALL GPU_LoadImage(const char* filename);
sub GPU_LoadImage(Str $filename # const char*
                  ) is native(LIB) returns GPU_Image is export { * }

#-From /root/piko/tmp/sdl-gpu/include/SDL_gpu.h:992
#/*! Load image from an image file in memory.  Don't forget to GPU_FreeImage() it. */
#DECLSPEC GPU_Image* SDLCALL GPU_LoadImage_RW(SDL_RWops* rwops, Uint8 free_rwops);
sub GPU_LoadImage_RW(SDL_RWops                     $rwops # Typedef<SDL_RWops>->|SDL_RWops|*
                    ,uint8                       $free_rwops # Typedef<Uint8>->|Typedef<uint8>->|unsigned char||
                     ) is native(LIB) returns GPU_Image is export { * }

#-From /root/piko/tmp/sdl-gpu/include/SDL_gpu.h:996
#/*! Creates an image that aliases the given image.  Aliases can be used to store image settings (e.g. modulation color) for easy switching.
# * GPU_FreeImage() frees the alias's memory, but does not affect the original. */
#DECLSPEC GPU_Image* SDLCALL GPU_CreateAliasImage(GPU_Image* image);
sub GPU_CreateAliasImage(GPU_Image $image # Typedef<GPU_Image>->|GPU_Image|*
                         ) is native(LIB) returns GPU_Image is export { * }

#-From /root/piko/tmp/sdl-gpu/include/SDL_gpu.h:999
#/*! Copy an image to a new image.  Don't forget to GPU_FreeImage() both. */
#DECLSPEC GPU_Image* SDLCALL GPU_CopyImage(GPU_Image* image);
sub GPU_CopyImage(GPU_Image $image # Typedef<GPU_Image>->|GPU_Image|*
                  ) is native(LIB) returns GPU_Image is export { * }

#-From /root/piko/tmp/sdl-gpu/include/SDL_gpu.h:1002
#/*! Deletes an image in the proper way for this renderer.  Also deletes the corresponding GPU_Target if applicable.  Be careful not to use that target afterward! */
#DECLSPEC void SDLCALL GPU_FreeImage(GPU_Image* image);
sub GPU_FreeImage(GPU_Image $image # Typedef<GPU_Image>->|GPU_Image|*
                  ) is native(LIB)  is export { * }

#-From /root/piko/tmp/sdl-gpu/include/SDL_gpu.h:1005
#/*! Change the logical size of the given image.  Rendering this image will scaled it as if the dimensions were actually the ones given. */
#DECLSPEC void SDLCALL GPU_SetImageVirtualResolution(GPU_Image* image, Uint16 w, Uint16 h);
sub GPU_SetImageVirtualResolution(GPU_Image                     $image # Typedef<GPU_Image>->|GPU_Image|*
                                 ,uint16                      $w # Typedef<Uint16>->|Typedef<uint16>->|short unsigned int||
                                 ,uint16                      $h # Typedef<Uint16>->|Typedef<uint16>->|short unsigned int||
                                  ) is native(LIB)  is export { * }

#-From /root/piko/tmp/sdl-gpu/include/SDL_gpu.h:1008
#/*! Reset the logical size of the given image to its original value. */
#DECLSPEC void SDLCALL GPU_UnsetImageVirtualResolution(GPU_Image* image);
sub GPU_UnsetImageVirtualResolution(GPU_Image $image # Typedef<GPU_Image>->|GPU_Image|*
                                    ) is native(LIB)  is export { * }

#-From /root/piko/tmp/sdl-gpu/include/SDL_gpu.h:1011
#/*! Update an image from surface data.  Ignores virtual resolution on the image so the number of pixels needed from the surface is known. */
#DECLSPEC void SDLCALL GPU_UpdateImage(GPU_Image* image, const GPU_Rect* image_rect, SDL_Surface* surface, const GPU_Rect* surface_rect);
sub GPU_UpdateImage(GPU_Image                     $image # Typedef<GPU_Image>->|GPU_Image|*
                   ,GPU_Rect                      $image_rect # const Typedef<GPU_Rect>->|GPU_Rect|*
                   ,SDL_Surface                   $surface # Typedef<SDL_Surface>->|SDL_Surface|*
                   ,GPU_Rect                      $surface_rect # const Typedef<GPU_Rect>->|GPU_Rect|*
                    ) is native(LIB)  is export { * }

#-From /root/piko/tmp/sdl-gpu/include/SDL_gpu.h:1014
#/*! Update an image from an array of pixel data.  Ignores virtual resolution on the image so the number of pixels needed from the surface is known. */
#DECLSPEC void SDLCALL GPU_UpdateImageBytes(GPU_Image* image, const GPU_Rect* image_rect, const unsigned char* bytes, int bytes_per_row);
sub GPU_UpdateImageBytes(GPU_Image                     $image # Typedef<GPU_Image>->|GPU_Image|*
                        ,GPU_Rect                      $image_rect # const Typedef<GPU_Rect>->|GPU_Rect|*
                        ,Pointer[uint8]                $bytes # const unsigned char*
                        ,int32                         $bytes_per_row # int
                         ) is native(LIB)  is export { * }

#-From /root/piko/tmp/sdl-gpu/include/SDL_gpu.h:1017
#/*! Update an image from surface data, replacing its underlying texture to allow for size changes.  Ignores virtual resolution on the image so the number of pixels needed from the surface is known. */
#DECLSPEC Uint8 SDLCALL GPU_ReplaceImage(GPU_Image* image, SDL_Surface* surface, const GPU_Rect* surface_rect);
sub GPU_ReplaceImage(GPU_Image                     $image # Typedef<GPU_Image>->|GPU_Image|*
                    ,SDL_Surface                   $surface # Typedef<SDL_Surface>->|SDL_Surface|*
                    ,GPU_Rect                      $surface_rect # const Typedef<GPU_Rect>->|GPU_Rect|*
                     ) is native(LIB) returns uint8 is export { * }

#-From /root/piko/tmp/sdl-gpu/include/SDL_gpu.h:1022
#/*! Save image to a file.
# * With a format of GPU_FILE_AUTO, the file type is deduced from the extension.  Supported formats are: png, bmp, tga.
# * Returns 0 on failure. */
#DECLSPEC Uint8 SDLCALL GPU_SaveImage(GPU_Image* image, const char* filename, GPU_FileFormatEnum format);
sub GPU_SaveImage(GPU_Image                     $image # Typedef<GPU_Image>->|GPU_Image|*
                 ,Str                           $filename # const char*
                 ,int32                         $format # GPU_FileFormatEnum
                  ) is native(LIB) returns uint8 is export { * }

#-From /root/piko/tmp/sdl-gpu/include/SDL_gpu.h:1025
#/*! Loads mipmaps for the given image, if supported by the renderer. */
#DECLSPEC void SDLCALL GPU_GenerateMipmaps(GPU_Image* image);
sub GPU_GenerateMipmaps(GPU_Image $image # Typedef<GPU_Image>->|GPU_Image|*
                        ) is native(LIB)  is export { * }

#-From /root/piko/tmp/sdl-gpu/include/SDL_gpu.h:1028
#/*! Sets the modulation color for subsequent drawing of the given image. */
#DECLSPEC void SDLCALL GPU_SetColor(GPU_Image* image, SDL_Color color);
sub GPU_SetColor(GPU_Image                     $image # Typedef<GPU_Image>->|GPU_Image|*
                ,SDL_Color                     $color # Typedef<SDL_Color>->|SDL_Color|
                 ) is native(LIB)  is export { * }

#-From /root/piko/tmp/sdl-gpu/include/SDL_gpu.h:1031
#/*! Sets the modulation color for subsequent drawing of the given image. */
#DECLSPEC void SDLCALL GPU_SetRGB(GPU_Image* image, Uint8 r, Uint8 g, Uint8 b);
sub GPU_SetRGB(GPU_Image                     $image # Typedef<GPU_Image>->|GPU_Image|*
              ,uint8                       $r # Typedef<Uint8>->|Typedef<uint8>->|unsigned char||
              ,uint8                       $g # Typedef<Uint8>->|Typedef<uint8>->|unsigned char||
              ,uint8                       $b # Typedef<Uint8>->|Typedef<uint8>->|unsigned char||
               ) is native(LIB)  is export { * }

#-From /root/piko/tmp/sdl-gpu/include/SDL_gpu.h:1034
#/*! Sets the modulation color for subsequent drawing of the given image. */
#DECLSPEC void SDLCALL GPU_SetRGBA(GPU_Image* image, Uint8 r, Uint8 g, Uint8 b, Uint8 a);
sub GPU_SetRGBA(GPU_Image                     $image # Typedef<GPU_Image>->|GPU_Image|*
               ,uint8                       $r # Typedef<Uint8>->|Typedef<uint8>->|unsigned char||
               ,uint8                       $g # Typedef<Uint8>->|Typedef<uint8>->|unsigned char||
               ,uint8                       $b # Typedef<Uint8>->|Typedef<uint8>->|unsigned char||
               ,uint8                       $a # Typedef<Uint8>->|Typedef<uint8>->|unsigned char||
                ) is native(LIB)  is export { * }

#-From /root/piko/tmp/sdl-gpu/include/SDL_gpu.h:1038
#/*! Unsets the modulation color for subsequent drawing of the given image.
# *  This is equivalent to coloring with pure opaque white (255, 255, 255, 255). */
#DECLSPEC void SDLCALL GPU_UnsetColor(GPU_Image* image);
sub GPU_UnsetColor(GPU_Image $image # Typedef<GPU_Image>->|GPU_Image|*
                   ) is native(LIB)  is export { * }

#-From /root/piko/tmp/sdl-gpu/include/SDL_gpu.h:1041
#/*! Gets the current alpha blending setting. */
#DECLSPEC Uint8 SDLCALL GPU_GetBlending(GPU_Image* image);
sub GPU_GetBlending(GPU_Image $image # Typedef<GPU_Image>->|GPU_Image|*
                    ) is native(LIB) returns uint8 is export { * }

#-From /root/piko/tmp/sdl-gpu/include/SDL_gpu.h:1044
#/*! Enables/disables alpha blending for the given image. */
#DECLSPEC void SDLCALL GPU_SetBlending(GPU_Image* image, Uint8 enable);
sub GPU_SetBlending(GPU_Image                     $image # Typedef<GPU_Image>->|GPU_Image|*
                   ,uint8                       $enable # Typedef<Uint8>->|Typedef<uint8>->|unsigned char||
                    ) is native(LIB)  is export { * }

#-From /root/piko/tmp/sdl-gpu/include/SDL_gpu.h:1047
#/*! Sets the blending component functions. */
#DECLSPEC void SDLCALL GPU_SetBlendFunction(GPU_Image* image, GPU_BlendFuncEnum source_color, GPU_BlendFuncEnum dest_color, GPU_BlendFuncEnum source_alpha, GPU_BlendFuncEnum dest_alpha);
sub GPU_SetBlendFunction(GPU_Image                     $image # Typedef<GPU_Image>->|GPU_Image|*
                        ,int32                         $source_color # GPU_BlendFuncEnum
                        ,int32                         $dest_color # GPU_BlendFuncEnum
                        ,int32                         $source_alpha # GPU_BlendFuncEnum
                        ,int32                         $dest_alpha # GPU_BlendFuncEnum
                         ) is native(LIB)  is export { * }

#-From /root/piko/tmp/sdl-gpu/include/SDL_gpu.h:1050
#/*! Sets the blending component equations. */
#DECLSPEC void SDLCALL GPU_SetBlendEquation(GPU_Image* image, GPU_BlendEqEnum color_equation, GPU_BlendEqEnum alpha_equation);
sub GPU_SetBlendEquation(GPU_Image                     $image # Typedef<GPU_Image>->|GPU_Image|*
                        ,int32                         $color_equation # GPU_BlendEqEnum
                        ,int32                         $alpha_equation # GPU_BlendEqEnum
                         ) is native(LIB)  is export { * }

#-From /root/piko/tmp/sdl-gpu/include/SDL_gpu.h:1053
#/*! Sets the blending mode, if supported by the renderer. */
#DECLSPEC void SDLCALL GPU_SetBlendMode(GPU_Image* image, GPU_BlendPresetEnum mode);
sub GPU_SetBlendMode(GPU_Image                     $image # Typedef<GPU_Image>->|GPU_Image|*
                    ,int32                         $mode # GPU_BlendPresetEnum
                     ) is native(LIB)  is export { * }

#-From /root/piko/tmp/sdl-gpu/include/SDL_gpu.h:1056
#/*! Sets the image filtering mode, if supported by the renderer. */
#DECLSPEC void SDLCALL GPU_SetImageFilter(GPU_Image* image, GPU_FilterEnum filter);
sub GPU_SetImageFilter(GPU_Image                     $image # Typedef<GPU_Image>->|GPU_Image|*
                      ,int32                         $filter # GPU_FilterEnum
                       ) is native(LIB)  is export { * }

#-From /root/piko/tmp/sdl-gpu/include/SDL_gpu.h:1059
#/*! Gets the current pixel snap setting.  The default value is GPU_SNAP_POSITION_AND_DIMENSIONS.  */
#DECLSPEC GPU_SnapEnum SDLCALL GPU_GetSnapMode(GPU_Image* image);
sub GPU_GetSnapMode(GPU_Image $image # Typedef<GPU_Image>->|GPU_Image|*
                    ) is native(LIB) returns int32 is export { * }

#-From /root/piko/tmp/sdl-gpu/include/SDL_gpu.h:1062
#/*! Sets the pixel grid snapping mode for the given image. */
#DECLSPEC void SDLCALL GPU_SetSnapMode(GPU_Image* image, GPU_SnapEnum mode);
sub GPU_SetSnapMode(GPU_Image                     $image # Typedef<GPU_Image>->|GPU_Image|*
                   ,int32                         $mode # GPU_SnapEnum
                    ) is native(LIB)  is export { * }

#-From /root/piko/tmp/sdl-gpu/include/SDL_gpu.h:1065
#/*! Sets the image wrapping mode, if supported by the renderer. */
#DECLSPEC void SDLCALL GPU_SetWrapMode(GPU_Image* image, GPU_WrapEnum wrap_mode_x, GPU_WrapEnum wrap_mode_y);
sub GPU_SetWrapMode(GPU_Image                     $image # Typedef<GPU_Image>->|GPU_Image|*
                   ,int32                         $wrap_mode_x # GPU_WrapEnum
                   ,int32                         $wrap_mode_y # GPU_WrapEnum
                    ) is native(LIB)  is export { * }

#-From /root/piko/tmp/sdl-gpu/include/SDL_gpu.h:1076
#/*! Copy SDL_Surface data into a new GPU_Image.  Don't forget to SDL_FreeSurface() the surface and GPU_FreeImage() the image.*/
#DECLSPEC GPU_Image* SDLCALL GPU_CopyImageFromSurface(SDL_Surface* surface);
sub GPU_CopyImageFromSurface(SDL_Surface $surface # Typedef<SDL_Surface>->|SDL_Surface|*
                             ) is native(LIB) returns GPU_Image is export { * }

#-From /root/piko/tmp/sdl-gpu/include/SDL_gpu.h:1079
#/*! Copy GPU_Target data into a new GPU_Image.  Don't forget to GPU_FreeImage() the image.*/
#DECLSPEC GPU_Image* SDLCALL GPU_CopyImageFromTarget(GPU_Target* target);
sub GPU_CopyImageFromTarget(GPU_Target $target # Typedef<GPU_Target>->|GPU_Target|*
                            ) is native(LIB) returns GPU_Image is export { * }

#-From /root/piko/tmp/sdl-gpu/include/SDL_gpu.h:1082
#/*! Copy GPU_Target data into a new SDL_Surface.  Don't forget to SDL_FreeSurface() the surface.*/
#DECLSPEC SDL_Surface* SDLCALL GPU_CopySurfaceFromTarget(GPU_Target* target);
sub GPU_CopySurfaceFromTarget(GPU_Target $target # Typedef<GPU_Target>->|GPU_Target|*
                              ) is native(LIB) returns SDL_Surface is export { * }

#-From /root/piko/tmp/sdl-gpu/include/SDL_gpu.h:1085
#/*! Copy GPU_Image data into a new SDL_Surface.  Don't forget to SDL_FreeSurface() the surface and GPU_FreeImage() the image.*/
#DECLSPEC SDL_Surface* SDLCALL GPU_CopySurfaceFromImage(GPU_Image* image);
sub GPU_CopySurfaceFromImage(GPU_Image $image # Typedef<GPU_Image>->|GPU_Image|*
                             ) is native(LIB) returns SDL_Surface is export { * }

#-From /root/piko/tmp/sdl-gpu/include/SDL_gpu.h:1100
#/*! Returns the magnitude (length) of the given vector. */
#DECLSPEC float SDLCALL GPU_VectorLength(float* vec3);
sub GPU_VectorLength(Pointer[num32] $vec3 # float*
                     ) is native(LIB) returns num32 is export { * }

#-From /root/piko/tmp/sdl-gpu/include/SDL_gpu.h:1103
#/*! Modifies the given vector so that it has a new length of 1. */
#DECLSPEC void SDLCALL GPU_VectorNormalize(float* vec3);
sub GPU_VectorNormalize(Pointer[num32] $vec3 # float*
                        ) is native(LIB)  is export { * }

#-From /root/piko/tmp/sdl-gpu/include/SDL_gpu.h:1106
#/*! Returns the dot product of two vectors. */
#DECLSPEC float SDLCALL GPU_VectorDot(float* A, float* B);
sub GPU_VectorDot(Pointer[num32]                $A # float*
                 ,Pointer[num32]                $B # float*
                  ) is native(LIB) returns num32 is export { * }

#-From /root/piko/tmp/sdl-gpu/include/SDL_gpu.h:1109
#/*! Performs the cross product of vectors A and B (result = A x B).  Do not use A or B as 'result'. */
#DECLSPEC void SDLCALL GPU_VectorCross(float* result, float* A, float* B);
sub GPU_VectorCross(Pointer[num32]                $result # float*
                   ,Pointer[num32]                $A # float*
                   ,Pointer[num32]                $B # float*
                    ) is native(LIB)  is export { * }

#-From /root/piko/tmp/sdl-gpu/include/SDL_gpu.h:1112
#/*! Overwrite 'result' vector with the values from vector A. */
#DECLSPEC void SDLCALL GPU_VectorCopy(float* result, float* A);
sub GPU_VectorCopy(Pointer[num32]                $result # float*
                  ,Pointer[num32]                $A # float*
                   ) is native(LIB)  is export { * }

#-From /root/piko/tmp/sdl-gpu/include/SDL_gpu.h:1115
#/*! Multiplies the given matrix into the given vector (vec3 = matrix*vec3). */
#DECLSPEC void SDLCALL GPU_VectorApplyMatrix(float* vec3, float* matrix_4x4);
sub GPU_VectorApplyMatrix(Pointer[num32]                $vec3 # float*
                         ,Pointer[num32]                $matrix_4x4 # float*
                          ) is native(LIB)  is export { * }

#-From /root/piko/tmp/sdl-gpu/include/SDL_gpu.h:1122
#/*! Overwrite 'result' matrix with the values from matrix A. */
#DECLSPEC void SDLCALL GPU_MatrixCopy(float* result, const float* A);
sub GPU_MatrixCopy(Pointer[num32]                $result # float*
                  ,Pointer[num32]                $A # const float*
                   ) is native(LIB)  is export { * }

#-From /root/piko/tmp/sdl-gpu/include/SDL_gpu.h:1125
#/*! Fills 'result' matrix with the identity matrix. */
#DECLSPEC void SDLCALL GPU_MatrixIdentity(float* result);
sub GPU_MatrixIdentity(Pointer[num32] $result # float*
                       ) is native(LIB)  is export { * }

#-From /root/piko/tmp/sdl-gpu/include/SDL_gpu.h:1128
#/*! Multiplies an orthographic projection matrix into the given matrix. */
#DECLSPEC void SDLCALL GPU_MatrixOrtho(float* result, float left, float right, float bottom, float top, float near, float far);
sub GPU_MatrixOrtho(Pointer[num32]                $result # float*
                   ,num32                         $left # float
                   ,num32                         $right # float
                   ,num32                         $bottom # float
                   ,num32                         $top # float
                   ,num32                         $near # float
                   ,num32                         $far # float
                    ) is native(LIB)  is export { * }

#-From /root/piko/tmp/sdl-gpu/include/SDL_gpu.h:1131
#/*! Multiplies a perspective projection matrix into the given matrix. */
#DECLSPEC void SDLCALL GPU_MatrixFrustum(float* result, float left, float right, float bottom, float top, float near, float far);
sub GPU_MatrixFrustum(Pointer[num32]                $result # float*
                     ,num32                         $left # float
                     ,num32                         $right # float
                     ,num32                         $bottom # float
                     ,num32                         $top # float
                     ,num32                         $near # float
                     ,num32                         $far # float
                      ) is native(LIB)  is export { * }

#-From /root/piko/tmp/sdl-gpu/include/SDL_gpu.h:1134
#/*! Multiplies a perspective projection matrix into the given matrix. */
#DECLSPEC void SDLCALL GPU_MatrixPerspective(float* result, float fovy, float aspect, float zNear, float zFar);
sub GPU_MatrixPerspective(Pointer[num32]                $result # float*
                         ,num32                         $fovy # float
                         ,num32                         $aspect # float
                         ,num32                         $zNear # float
                         ,num32                         $zFar # float
                          ) is native(LIB)  is export { * }

#-From /root/piko/tmp/sdl-gpu/include/SDL_gpu.h:1137
#/*! Multiplies a view matrix into the given matrix. */
#DECLSPEC void SDLCALL GPU_MatrixLookAt(float* matrix, float eye_x, float eye_y, float eye_z, float target_x, float target_y, float target_z, float up_x, float up_y, float up_z);
sub GPU_MatrixLookAt(Pointer[num32]                $matrix # float*
                    ,num32                         $eye_x # float
                    ,num32                         $eye_y # float
                    ,num32                         $eye_z # float
                    ,num32                         $target_x # float
                    ,num32                         $target_y # float
                    ,num32                         $target_z # float
                    ,num32                         $up_x # float
                    ,num32                         $up_y # float
                    ,num32                         $up_z # float
                     ) is native(LIB)  is export { * }

#-From /root/piko/tmp/sdl-gpu/include/SDL_gpu.h:1140
#/*! Adds a translation into the given matrix. */
#DECLSPEC void SDLCALL GPU_MatrixTranslate(float* result, float x, float y, float z);
sub GPU_MatrixTranslate(Pointer[num32]                $result # float*
                       ,num32                         $x # float
                       ,num32                         $y # float
                       ,num32                         $z # float
                        ) is native(LIB)  is export { * }

#-From /root/piko/tmp/sdl-gpu/include/SDL_gpu.h:1143
#/*! Multiplies a scaling matrix into the given matrix. */
#DECLSPEC void SDLCALL GPU_MatrixScale(float* result, float sx, float sy, float sz);
sub GPU_MatrixScale(Pointer[num32]                $result # float*
                   ,num32                         $sx # float
                   ,num32                         $sy # float
                   ,num32                         $sz # float
                    ) is native(LIB)  is export { * }

#-From /root/piko/tmp/sdl-gpu/include/SDL_gpu.h:1146
#/*! Multiplies a rotation matrix into the given matrix. */
#DECLSPEC void SDLCALL GPU_MatrixRotate(float* result, float degrees, float x, float y, float z);
sub GPU_MatrixRotate(Pointer[num32]                $result # float*
                    ,num32                         $degrees # float
                    ,num32                         $x # float
                    ,num32                         $y # float
                    ,num32                         $z # float
                     ) is native(LIB)  is export { * }

#-From /root/piko/tmp/sdl-gpu/include/SDL_gpu.h:1151
#/*! Multiplies matrices A and B and stores the result in the given 'result' matrix (result = A*B).  Do not use A or B as 'result'.
# * \see GPU_MultiplyAndAssign
#*/
#DECLSPEC void SDLCALL GPU_Multiply4x4(float* result, float* A, float* B);
sub GPU_Multiply4x4(Pointer[num32]                $result # float*
                   ,Pointer[num32]                $A # float*
                   ,Pointer[num32]                $B # float*
                    ) is native(LIB)  is export { * }

#-From /root/piko/tmp/sdl-gpu/include/SDL_gpu.h:1154
#/*! Multiplies matrices 'result' and B and stores the result in the given 'result' matrix (result = result * B). */
#DECLSPEC void SDLCALL GPU_MultiplyAndAssign(float* result, float* B);
sub GPU_MultiplyAndAssign(Pointer[num32]                $result # float*
                         ,Pointer[num32]                $B # float*
                          ) is native(LIB)  is export { * }

#-From /root/piko/tmp/sdl-gpu/include/SDL_gpu.h:1160
#/*! Returns an internal string that represents the contents of matrix A. */
#DECLSPEC const char* SDLCALL GPU_GetMatrixString(float* A);
sub GPU_GetMatrixString(Pointer[num32] $A # float*
                        ) is native(LIB) returns Str is export { * }

#-From /root/piko/tmp/sdl-gpu/include/SDL_gpu.h:1163
#/*! Returns the current matrix from the top of the matrix stack.  Returns NULL if stack is empty. */
#DECLSPEC float* SDLCALL GPU_GetCurrentMatrix(void);
sub GPU_GetCurrentMatrix(
                         ) is native(LIB) returns Pointer[num32] is export { * }

#-From /root/piko/tmp/sdl-gpu/include/SDL_gpu.h:1166
#/*! Returns the current modelview matrix from the top of the matrix stack.  Returns NULL if stack is empty. */
#DECLSPEC float* SDLCALL GPU_GetModelView(void);
sub GPU_GetModelView(
                     ) is native(LIB) returns Pointer[num32] is export { * }

#-From /root/piko/tmp/sdl-gpu/include/SDL_gpu.h:1169
#/*! Returns the current projection matrix from the top of the matrix stack.  Returns NULL if stack is empty. */
#DECLSPEC float* SDLCALL GPU_GetProjection(void);
sub GPU_GetProjection(
                      ) is native(LIB) returns Pointer[num32] is export { * }

#-From /root/piko/tmp/sdl-gpu/include/SDL_gpu.h:1172
#/*! Copies the current modelview-projection matrix into the given 'result' matrix (result = P*M). */
#DECLSPEC void SDLCALL GPU_GetModelViewProjection(float* result);
sub GPU_GetModelViewProjection(Pointer[num32] $result # float*
                               ) is native(LIB)  is export { * }

#-From /root/piko/tmp/sdl-gpu/include/SDL_gpu.h:1178
#/*! Changes matrix mode to either GPU_PROJECTION or GPU_MODELVIEW.  Further matrix stack operations manipulate that particular stack. */
#DECLSPEC void SDLCALL GPU_MatrixMode(int matrix_mode);
sub GPU_MatrixMode(int32 $matrix_mode # int
                   ) is native(LIB)  is export { * }

#-From /root/piko/tmp/sdl-gpu/include/SDL_gpu.h:1181
#/*! Pushes the current matrix as a new matrix stack item. */
#DECLSPEC void SDLCALL GPU_PushMatrix(void);
sub GPU_PushMatrix(
                   ) is native(LIB)  is export { * }

#-From /root/piko/tmp/sdl-gpu/include/SDL_gpu.h:1184
#/*! Removes the current matrix from the stack. */
#DECLSPEC void SDLCALL GPU_PopMatrix(void);
sub GPU_PopMatrix(
                  ) is native(LIB)  is export { * }

#-From /root/piko/tmp/sdl-gpu/include/SDL_gpu.h:1187
#/*! Fills current matrix with the identity matrix. */
#DECLSPEC void SDLCALL GPU_LoadIdentity(void);
sub GPU_LoadIdentity(
                     ) is native(LIB)  is export { * }

#-From /root/piko/tmp/sdl-gpu/include/SDL_gpu.h:1190
#/*! Multiplies an orthographic projection matrix into the current matrix. */
#DECLSPEC void SDLCALL GPU_Ortho(float left, float right, float bottom, float top, float near, float far);
sub GPU_Ortho(num32                         $left # float
             ,num32                         $right # float
             ,num32                         $bottom # float
             ,num32                         $top # float
             ,num32                         $near # float
             ,num32                         $far # float
              ) is native(LIB)  is export { * }

#-From /root/piko/tmp/sdl-gpu/include/SDL_gpu.h:1193
#/*! Multiplies a perspective projection matrix into the current matrix. */
#DECLSPEC void SDLCALL GPU_Frustum(float left, float right, float bottom, float top, float near, float far);
sub GPU_Frustum(num32                         $left # float
               ,num32                         $right # float
               ,num32                         $bottom # float
               ,num32                         $top # float
               ,num32                         $near # float
               ,num32                         $far # float
                ) is native(LIB)  is export { * }

#-From /root/piko/tmp/sdl-gpu/include/SDL_gpu.h:1196
#/*! Adds a translation into the current matrix. */
#DECLSPEC void SDLCALL GPU_Translate(float x, float y, float z);
sub GPU_Translate(num32                         $x # float
                 ,num32                         $y # float
                 ,num32                         $z # float
                  ) is native(LIB)  is export { * }

#-From /root/piko/tmp/sdl-gpu/include/SDL_gpu.h:1199
#/*! Multiplies a scaling matrix into the current matrix. */
#DECLSPEC void SDLCALL GPU_Scale(float sx, float sy, float sz);
sub GPU_Scale(num32                         $sx # float
             ,num32                         $sy # float
             ,num32                         $sz # float
              ) is native(LIB)  is export { * }

#-From /root/piko/tmp/sdl-gpu/include/SDL_gpu.h:1202
#/*! Multiplies a rotation matrix into the current matrix. */
#DECLSPEC void SDLCALL GPU_Rotate(float degrees, float x, float y, float z);
sub GPU_Rotate(num32                         $degrees # float
              ,num32                         $x # float
              ,num32                         $y # float
              ,num32                         $z # float
               ) is native(LIB)  is export { * }

#-From /root/piko/tmp/sdl-gpu/include/SDL_gpu.h:1205
#/*! Multiplies a given matrix into the current matrix. */
#DECLSPEC void SDLCALL GPU_MultMatrix(float* matrix4x4);
sub GPU_MultMatrix(Pointer[num32] $matrix4x4 # float*
                   ) is native(LIB)  is export { * }

#-From /root/piko/tmp/sdl-gpu/include/SDL_gpu.h:1219
#/*! Clears the contents of the given render target.  Fills the target with color {0, 0, 0, 0}. */
#DECLSPEC void SDLCALL GPU_Clear(GPU_Target* target);
sub GPU_Clear(GPU_Target $target # Typedef<GPU_Target>->|GPU_Target|*
              ) is native(LIB)  is export { * }

#-From /root/piko/tmp/sdl-gpu/include/SDL_gpu.h:1222
#/*! Fills the given render target with a color. */
#DECLSPEC void SDLCALL GPU_ClearColor(GPU_Target* target, SDL_Color color);
sub GPU_ClearColor(GPU_Target                    $target # Typedef<GPU_Target>->|GPU_Target|*
                  ,SDL_Color                     $color # Typedef<SDL_Color>->|SDL_Color|
                   ) is native(LIB)  is export { * }

#-From /root/piko/tmp/sdl-gpu/include/SDL_gpu.h:1225
#/*! Fills the given render target with a color (alpha is 255, fully opaque). */
#DECLSPEC void SDLCALL GPU_ClearRGB(GPU_Target* target, Uint8 r, Uint8 g, Uint8 b);
sub GPU_ClearRGB(GPU_Target                    $target # Typedef<GPU_Target>->|GPU_Target|*
                ,uint8                       $r # Typedef<Uint8>->|Typedef<uint8>->|unsigned char||
                ,uint8                       $g # Typedef<Uint8>->|Typedef<uint8>->|unsigned char||
                ,uint8                       $b # Typedef<Uint8>->|Typedef<uint8>->|unsigned char||
                 ) is native(LIB)  is export { * }

#-From /root/piko/tmp/sdl-gpu/include/SDL_gpu.h:1228
#/*! Fills the given render target with a color. */
#DECLSPEC void SDLCALL GPU_ClearRGBA(GPU_Target* target, Uint8 r, Uint8 g, Uint8 b, Uint8 a);
sub GPU_ClearRGBA(GPU_Target                    $target # Typedef<GPU_Target>->|GPU_Target|*
                 ,uint8                       $r # Typedef<Uint8>->|Typedef<uint8>->|unsigned char||
                 ,uint8                       $g # Typedef<Uint8>->|Typedef<uint8>->|unsigned char||
                 ,uint8                       $b # Typedef<Uint8>->|Typedef<uint8>->|unsigned char||
                 ,uint8                       $a # Typedef<Uint8>->|Typedef<uint8>->|unsigned char||
                  ) is native(LIB)  is export { * }

#-From /root/piko/tmp/sdl-gpu/include/SDL_gpu.h:1234
#/*! Draws the given image to the given render target.
#    * \param src_rect The region of the source image to use.
#    * \param x Destination x-position
#    * \param y Destination y-position */
#DECLSPEC void SDLCALL GPU_Blit(GPU_Image* image, GPU_Rect* src_rect, GPU_Target* target, float x, float y);
sub GPU_Blit(GPU_Image                     $image # Typedef<GPU_Image>->|GPU_Image|*
            ,GPU_Rect                      $src_rect # Typedef<GPU_Rect>->|GPU_Rect|*
            ,GPU_Target                    $target # Typedef<GPU_Target>->|GPU_Target|*
            ,num32                         $x # float
            ,num32                         $y # float
             ) is native(LIB)  is export { * }

#-From /root/piko/tmp/sdl-gpu/include/SDL_gpu.h:1241
#/*! Rotates and draws the given image to the given render target.
#    * \param src_rect The region of the source image to use.
#    * \param x Destination x-position
#    * \param y Destination y-position
#    * \param degrees Rotation angle (in degrees) */
#DECLSPEC void SDLCALL GPU_BlitRotate(GPU_Image* image, GPU_Rect* src_rect, GPU_Target* target, float x, float y, float degrees);
sub GPU_BlitRotate(GPU_Image                     $image # Typedef<GPU_Image>->|GPU_Image|*
                  ,GPU_Rect                      $src_rect # Typedef<GPU_Rect>->|GPU_Rect|*
                  ,GPU_Target                    $target # Typedef<GPU_Target>->|GPU_Target|*
                  ,num32                         $x # float
                  ,num32                         $y # float
                  ,num32                         $degrees # float
                   ) is native(LIB)  is export { * }

#-From /root/piko/tmp/sdl-gpu/include/SDL_gpu.h:1249
#/*! Scales and draws the given image to the given render target.
#    * \param src_rect The region of the source image to use.
#    * \param x Destination x-position
#    * \param y Destination y-position
#    * \param scaleX Horizontal stretch factor
#    * \param scaleY Vertical stretch factor */
#DECLSPEC void SDLCALL GPU_BlitScale(GPU_Image* image, GPU_Rect* src_rect, GPU_Target* target, float x, float y, float scaleX, float scaleY);
sub GPU_BlitScale(GPU_Image                     $image # Typedef<GPU_Image>->|GPU_Image|*
                 ,GPU_Rect                      $src_rect # Typedef<GPU_Rect>->|GPU_Rect|*
                 ,GPU_Target                    $target # Typedef<GPU_Target>->|GPU_Target|*
                 ,num32                         $x # float
                 ,num32                         $y # float
                 ,num32                         $scaleX # float
                 ,num32                         $scaleY # float
                  ) is native(LIB)  is export { * }

#-From /root/piko/tmp/sdl-gpu/include/SDL_gpu.h:1258
#/*! Scales, rotates, and draws the given image to the given render target.
#    * \param src_rect The region of the source image to use.
#    * \param x Destination x-position
#    * \param y Destination y-position
#    * \param degrees Rotation angle (in degrees)
#    * \param scaleX Horizontal stretch factor
#    * \param scaleY Vertical stretch factor */
#DECLSPEC void SDLCALL GPU_BlitTransform(GPU_Image* image, GPU_Rect* src_rect, GPU_Target* target, float x, float y, float degrees, float scaleX, float scaleY);
sub GPU_BlitTransform(GPU_Image                     $image # Typedef<GPU_Image>->|GPU_Image|*
                     ,GPU_Rect                      $src_rect # Typedef<GPU_Rect>->|GPU_Rect|*
                     ,GPU_Target                    $target # Typedef<GPU_Target>->|GPU_Target|*
                     ,num32                         $x # float
                     ,num32                         $y # float
                     ,num32                         $degrees # float
                     ,num32                         $scaleX # float
                     ,num32                         $scaleY # float
                      ) is native(LIB)  is export { * }

#-From /root/piko/tmp/sdl-gpu/include/SDL_gpu.h:1269
#/*! Scales, rotates around a pivot point, and draws the given image to the given render target.  The drawing point (x, y) coincides with the pivot point on the src image (pivot_x, pivot_y).
#	* \param src_rect The region of the source image to use.
#	* \param x Destination x-position
#	* \param y Destination y-position
#	* \param pivot_x Pivot x-position (in image coordinates)
#	* \param pivot_y Pivot y-position (in image coordinates)
#	* \param degrees Rotation angle (in degrees)
#	* \param scaleX Horizontal stretch factor
#	* \param scaleY Vertical stretch factor */
#DECLSPEC void SDLCALL GPU_BlitTransformX(GPU_Image* image, GPU_Rect* src_rect, GPU_Target* target, float x, float y, float pivot_x, float pivot_y, float degrees, float scaleX, float scaleY);
sub GPU_BlitTransformX(GPU_Image                     $image # Typedef<GPU_Image>->|GPU_Image|*
                      ,GPU_Rect                      $src_rect # Typedef<GPU_Rect>->|GPU_Rect|*
                      ,GPU_Target                    $target # Typedef<GPU_Target>->|GPU_Target|*
                      ,num32                         $x # float
                      ,num32                         $y # float
                      ,num32                         $pivot_x # float
                      ,num32                         $pivot_y # float
                      ,num32                         $degrees # float
                      ,num32                         $scaleX # float
                      ,num32                         $scaleY # float
                       ) is native(LIB)  is export { * }

#-From /root/piko/tmp/sdl-gpu/include/SDL_gpu.h:1276
#/*! Renders triangles from the given set of vertices.  This lets you render arbitrary 2D geometry.  It is a direct path to the GPU, so the format is different than typical SDL_gpu calls.
# * \param values A tightly-packed array of vertex position (e.g. x,y), texture coordinates (e.g. s,t), and color (e.g. r,g,b,a) values.  Texture coordinates and color values are expected to be already normalized to 0.0 - 1.0.  Pass NULL to render with only custom shader attributes.
# * \param indices If not NULL, this is used to specify which vertices to use and in what order (i.e. it indexes the vertices in the 'values' array).
# * \param flags Bit flags to control the interpretation of the 'values' array parameters.
# */
#DECLSPEC void SDLCALL GPU_TriangleBatch(GPU_Image* image, GPU_Target* target, unsigned short num_vertices, float* values, unsigned int num_indices, unsigned short* indices, GPU_BatchFlagEnum flags);
sub GPU_TriangleBatch(GPU_Image                     $image # Typedef<GPU_Image>->|GPU_Image|*
                     ,GPU_Target                    $target # Typedef<GPU_Target>->|GPU_Target|*
                     ,uint16                        $num_vertices # short unsigned int
                     ,Pointer[num32]                $values # float*
                     ,uint32                        $num_indices # unsigned int
                     ,Pointer[uint16]               $indices # short unsigned int*
                     ,uint32                      $flags # Typedef<GPU_BatchFlagEnum>->|Typedef<Uint32>->|Typedef<uint32>->|unsigned int|||
                      ) is native(LIB)  is export { * }

#-From /root/piko/tmp/sdl-gpu/include/SDL_gpu.h:1279
#/*! Send all buffered blitting data to the current context target. */
#DECLSPEC void SDLCALL GPU_FlushBlitBuffer(void);
sub GPU_FlushBlitBuffer(
                        ) is native(LIB)  is export { * }

#-From /root/piko/tmp/sdl-gpu/include/SDL_gpu.h:1282
#/*! Updates the given target's associated window. */
#DECLSPEC void SDLCALL GPU_Flip(GPU_Target* target);
sub GPU_Flip(GPU_Target $target # Typedef<GPU_Target>->|GPU_Target|*
             ) is native(LIB)  is export { * }

#-From /root/piko/tmp/sdl-gpu/include/SDL_gpu.h:1300
#/*! Renders a colored point.
# * \param target The destination render target
# * \param x x-coord of the point
# * \param y y-coord of the point
# * \param color The color of the shape to render
# */
#DECLSPEC void SDLCALL GPU_Pixel(GPU_Target* target, float x, float y, SDL_Color color);
sub GPU_Pixel(GPU_Target                    $target # Typedef<GPU_Target>->|GPU_Target|*
             ,num32                         $x # float
             ,num32                         $y # float
             ,SDL_Color                     $color # Typedef<SDL_Color>->|SDL_Color|
              ) is native(LIB)  is export { * }

#-From /root/piko/tmp/sdl-gpu/include/SDL_gpu.h:1310
#/*! Renders a colored line.
# * \param target The destination render target
# * \param x1 x-coord of starting point
# * \param y1 y-coord of starting point
# * \param x2 x-coord of ending point
# * \param y2 y-coord of ending point
# * \param color The color of the shape to render
# */
#DECLSPEC void SDLCALL GPU_Line(GPU_Target* target, float x1, float y1, float x2, float y2, SDL_Color color);
sub GPU_Line(GPU_Target                    $target # Typedef<GPU_Target>->|GPU_Target|*
            ,num32                         $x1 # float
            ,num32                         $y1 # float
            ,num32                         $x2 # float
            ,num32                         $y2 # float
            ,SDL_Color                     $color # Typedef<SDL_Color>->|SDL_Color|
             ) is native(LIB)  is export { * }

#-From /root/piko/tmp/sdl-gpu/include/SDL_gpu.h:1321
#/*! Renders a colored arc curve (circle segment).
# * \param target The destination render target
# * \param x x-coord of center point
# * \param y y-coord of center point
# * \param radius The radius of the circle / distance from the center point that rendering will occur
# * \param start_angle The angle to start from, in degrees.  Measured clockwise from the positive x-axis.
# * \param end_angle The angle to end at, in degrees.  Measured clockwise from the positive x-axis.
# * \param color The color of the shape to render
# */
#DECLSPEC void SDLCALL GPU_Arc(GPU_Target* target, float x, float y, float radius, float start_angle, float end_angle, SDL_Color color);
sub GPU_Arc(GPU_Target                    $target # Typedef<GPU_Target>->|GPU_Target|*
           ,num32                         $x # float
           ,num32                         $y # float
           ,num32                         $radius # float
           ,num32                         $start_angle # float
           ,num32                         $end_angle # float
           ,SDL_Color                     $color # Typedef<SDL_Color>->|SDL_Color|
            ) is native(LIB)  is export { * }

#-From /root/piko/tmp/sdl-gpu/include/SDL_gpu.h:1332
#/*! Renders a colored filled arc (circle segment / pie piece).
# * \param target The destination render target
# * \param x x-coord of center point
# * \param y y-coord of center point
# * \param radius The radius of the circle / distance from the center point that rendering will occur
# * \param start_angle The angle to start from, in degrees.  Measured clockwise from the positive x-axis.
# * \param end_angle The angle to end at, in degrees.  Measured clockwise from the positive x-axis.
# * \param color The color of the shape to render
# */
#DECLSPEC void SDLCALL GPU_ArcFilled(GPU_Target* target, float x, float y, float radius, float start_angle, float end_angle, SDL_Color color);
sub GPU_ArcFilled(GPU_Target                    $target # Typedef<GPU_Target>->|GPU_Target|*
                 ,num32                         $x # float
                 ,num32                         $y # float
                 ,num32                         $radius # float
                 ,num32                         $start_angle # float
                 ,num32                         $end_angle # float
                 ,SDL_Color                     $color # Typedef<SDL_Color>->|SDL_Color|
                  ) is native(LIB)  is export { * }

#-From /root/piko/tmp/sdl-gpu/include/SDL_gpu.h:1341
#/*! Renders a colored circle outline.
# * \param target The destination render target
# * \param x x-coord of center point
# * \param y y-coord of center point
# * \param radius The radius of the circle / distance from the center point that rendering will occur
# * \param color The color of the shape to render
# */
#DECLSPEC void SDLCALL GPU_Circle(GPU_Target* target, float x, float y, float radius, SDL_Color color);
sub GPU_Circle(GPU_Target                    $target # Typedef<GPU_Target>->|GPU_Target|*
              ,num32                         $x # float
              ,num32                         $y # float
              ,num32                         $radius # float
              ,SDL_Color                     $color # Typedef<SDL_Color>->|SDL_Color|
               ) is native(LIB)  is export { * }

#-From /root/piko/tmp/sdl-gpu/include/SDL_gpu.h:1350
#/*! Renders a colored filled circle.
# * \param target The destination render target
# * \param x x-coord of center point
# * \param y y-coord of center point
# * \param radius The radius of the circle / distance from the center point that rendering will occur
# * \param color The color of the shape to render
# */
#DECLSPEC void SDLCALL GPU_CircleFilled(GPU_Target* target, float x, float y, float radius, SDL_Color color);
sub GPU_CircleFilled(GPU_Target                    $target # Typedef<GPU_Target>->|GPU_Target|*
                    ,num32                         $x # float
                    ,num32                         $y # float
                    ,num32                         $radius # float
                    ,SDL_Color                     $color # Typedef<SDL_Color>->|SDL_Color|
                     ) is native(LIB)  is export { * }

#-From /root/piko/tmp/sdl-gpu/include/SDL_gpu.h:1361
#/*! Renders a colored ellipse outline.
# * \param target The destination render target
# * \param x x-coord of center point
# * \param y y-coord of center point
# * \param rx x-radius of ellipse
# * \param ry y-radius of ellipse
# * \param degrees The angle to rotate the ellipse
# * \param color The color of the shape to render
# */
#DECLSPEC void SDLCALL GPU_Ellipse(GPU_Target* target, float x, float y, float rx, float ry, float degrees, SDL_Color color);
sub GPU_Ellipse(GPU_Target                    $target # Typedef<GPU_Target>->|GPU_Target|*
               ,num32                         $x # float
               ,num32                         $y # float
               ,num32                         $rx # float
               ,num32                         $ry # float
               ,num32                         $degrees # float
               ,SDL_Color                     $color # Typedef<SDL_Color>->|SDL_Color|
                ) is native(LIB)  is export { * }

#-From /root/piko/tmp/sdl-gpu/include/SDL_gpu.h:1372
#/*! Renders a colored filled ellipse.
# * \param target The destination render target
# * \param x x-coord of center point
# * \param y y-coord of center point
# * \param rx x-radius of ellipse
# * \param ry y-radius of ellipse
# * \param degrees The angle to rotate the ellipse
# * \param color The color of the shape to render
# */
#DECLSPEC void SDLCALL GPU_EllipseFilled(GPU_Target* target, float x, float y, float rx, float ry, float degrees, SDL_Color color);
sub GPU_EllipseFilled(GPU_Target                    $target # Typedef<GPU_Target>->|GPU_Target|*
                     ,num32                         $x # float
                     ,num32                         $y # float
                     ,num32                         $rx # float
                     ,num32                         $ry # float
                     ,num32                         $degrees # float
                     ,SDL_Color                     $color # Typedef<SDL_Color>->|SDL_Color|
                      ) is native(LIB)  is export { * }

#-From /root/piko/tmp/sdl-gpu/include/SDL_gpu.h:1384
#/*! Renders a colored annular sector outline (ring segment).
# * \param target The destination render target
# * \param x x-coord of center point
# * \param y y-coord of center point
# * \param inner_radius The inner radius of the ring
# * \param outer_radius The outer radius of the ring
# * \param start_angle The angle to start from, in degrees.  Measured clockwise from the positive x-axis.
# * \param end_angle The angle to end at, in degrees.  Measured clockwise from the positive x-axis.
# * \param color The color of the shape to render
# */
#DECLSPEC void SDLCALL GPU_Sector(GPU_Target* target, float x, float y, float inner_radius, float outer_radius, float start_angle, float end_angle, SDL_Color color);
sub GPU_Sector(GPU_Target                    $target # Typedef<GPU_Target>->|GPU_Target|*
              ,num32                         $x # float
              ,num32                         $y # float
              ,num32                         $inner_radius # float
              ,num32                         $outer_radius # float
              ,num32                         $start_angle # float
              ,num32                         $end_angle # float
              ,SDL_Color                     $color # Typedef<SDL_Color>->|SDL_Color|
               ) is native(LIB)  is export { * }

#-From /root/piko/tmp/sdl-gpu/include/SDL_gpu.h:1396
#/*! Renders a colored filled annular sector (ring segment).
# * \param target The destination render target
# * \param x x-coord of center point
# * \param y y-coord of center point
# * \param inner_radius The inner radius of the ring
# * \param outer_radius The outer radius of the ring
# * \param start_angle The angle to start from, in degrees.  Measured clockwise from the positive x-axis.
# * \param end_angle The angle to end at, in degrees.  Measured clockwise from the positive x-axis.
# * \param color The color of the shape to render
# */
#DECLSPEC void SDLCALL GPU_SectorFilled(GPU_Target* target, float x, float y, float inner_radius, float outer_radius, float start_angle, float end_angle, SDL_Color color);
sub GPU_SectorFilled(GPU_Target                    $target # Typedef<GPU_Target>->|GPU_Target|*
                    ,num32                         $x # float
                    ,num32                         $y # float
                    ,num32                         $inner_radius # float
                    ,num32                         $outer_radius # float
                    ,num32                         $start_angle # float
                    ,num32                         $end_angle # float
                    ,SDL_Color                     $color # Typedef<SDL_Color>->|SDL_Color|
                     ) is native(LIB)  is export { * }

#-From /root/piko/tmp/sdl-gpu/include/SDL_gpu.h:1408
#/*! Renders a colored triangle outline.
# * \param target The destination render target
# * \param x1 x-coord of first point
# * \param y1 y-coord of first point
# * \param x2 x-coord of second point
# * \param y2 y-coord of second point
# * \param x3 x-coord of third point
# * \param y3 y-coord of third point
# * \param color The color of the shape to render
# */
#DECLSPEC void SDLCALL GPU_Tri(GPU_Target* target, float x1, float y1, float x2, float y2, float x3, float y3, SDL_Color color);
sub GPU_Tri(GPU_Target                    $target # Typedef<GPU_Target>->|GPU_Target|*
           ,num32                         $x1 # float
           ,num32                         $y1 # float
           ,num32                         $x2 # float
           ,num32                         $y2 # float
           ,num32                         $x3 # float
           ,num32                         $y3 # float
           ,SDL_Color                     $color # Typedef<SDL_Color>->|SDL_Color|
            ) is native(LIB)  is export { * }

#-From /root/piko/tmp/sdl-gpu/include/SDL_gpu.h:1420
#/*! Renders a colored filled triangle.
# * \param target The destination render target
# * \param x1 x-coord of first point
# * \param y1 y-coord of first point
# * \param x2 x-coord of second point
# * \param y2 y-coord of second point
# * \param x3 x-coord of third point
# * \param y3 y-coord of third point
# * \param color The color of the shape to render
# */
#DECLSPEC void SDLCALL GPU_TriFilled(GPU_Target* target, float x1, float y1, float x2, float y2, float x3, float y3, SDL_Color color);
sub GPU_TriFilled(GPU_Target                    $target # Typedef<GPU_Target>->|GPU_Target|*
                 ,num32                         $x1 # float
                 ,num32                         $y1 # float
                 ,num32                         $x2 # float
                 ,num32                         $y2 # float
                 ,num32                         $x3 # float
                 ,num32                         $y3 # float
                 ,SDL_Color                     $color # Typedef<SDL_Color>->|SDL_Color|
                  ) is native(LIB)  is export { * }

#-From /root/piko/tmp/sdl-gpu/include/SDL_gpu.h:1430
#/*! Renders a colored rectangle outline.
# * \param target The destination render target
# * \param x1 x-coord of top-left corner
# * \param y1 y-coord of top-left corner
# * \param x2 x-coord of bottom-right corner
# * \param y2 y-coord of bottom-right corner
# * \param color The color of the shape to render
# */
#DECLSPEC void SDLCALL GPU_Rectangle(GPU_Target* target, float x1, float y1, float x2, float y2, SDL_Color color);
sub GPU_Rectangle(GPU_Target                    $target # Typedef<GPU_Target>->|GPU_Target|*
                 ,num32                         $x1 # float
                 ,num32                         $y1 # float
                 ,num32                         $x2 # float
                 ,num32                         $y2 # float
                 ,SDL_Color                     $color # Typedef<SDL_Color>->|SDL_Color|
                  ) is native(LIB)  is export { * }

#-From /root/piko/tmp/sdl-gpu/include/SDL_gpu.h:1437
#/*! Renders a colored rectangle outline.
# * \param target The destination render target
# * \param rect The rectangular area to draw
# * \param color The color of the shape to render
# */
#DECLSPEC void SDLCALL GPU_Rectangle2(GPU_Target* target, GPU_Rect rect, SDL_Color color);
sub GPU_Rectangle2(GPU_Target                    $target # Typedef<GPU_Target>->|GPU_Target|*
                  ,GPU_Rect                      $rect # Typedef<GPU_Rect>->|GPU_Rect|
                  ,SDL_Color                     $color # Typedef<SDL_Color>->|SDL_Color|
                   ) is native(LIB)  is export { * }

#-From /root/piko/tmp/sdl-gpu/include/SDL_gpu.h:1447
#/*! Renders a colored filled rectangle.
# * \param target The destination render target
# * \param x1 x-coord of top-left corner
# * \param y1 y-coord of top-left corner
# * \param x2 x-coord of bottom-right corner
# * \param y2 y-coord of bottom-right corner
# * \param color The color of the shape to render
# */
#DECLSPEC void SDLCALL GPU_RectangleFilled(GPU_Target* target, float x1, float y1, float x2, float y2, SDL_Color color);
sub GPU_RectangleFilled(GPU_Target                    $target # Typedef<GPU_Target>->|GPU_Target|*
                       ,num32                         $x1 # float
                       ,num32                         $y1 # float
                       ,num32                         $x2 # float
                       ,num32                         $y2 # float
                       ,SDL_Color                     $color # Typedef<SDL_Color>->|SDL_Color|
                        ) is native(LIB)  is export { * }

#-From /root/piko/tmp/sdl-gpu/include/SDL_gpu.h:1454
#/*! Renders a colored filled rectangle.
# * \param target The destination render target
# * \param rect The rectangular area to draw
# * \param color The color of the shape to render
# */
#DECLSPEC void SDLCALL GPU_RectangleFilled2(GPU_Target* target, GPU_Rect rect, SDL_Color color);
sub GPU_RectangleFilled2(GPU_Target                    $target # Typedef<GPU_Target>->|GPU_Target|*
                        ,GPU_Rect                      $rect # Typedef<GPU_Rect>->|GPU_Rect|
                        ,SDL_Color                     $color # Typedef<SDL_Color>->|SDL_Color|
                         ) is native(LIB)  is export { * }

#-From /root/piko/tmp/sdl-gpu/include/SDL_gpu.h:1465
#/*! Renders a colored rounded (filleted) rectangle outline.
# * \param target The destination render target
# * \param x1 x-coord of top-left corner
# * \param y1 y-coord of top-left corner
# * \param x2 x-coord of bottom-right corner
# * \param y2 y-coord of bottom-right corner
# * \param radius The radius of the corners
# * \param color The color of the shape to render
# */
#DECLSPEC void SDLCALL GPU_RectangleRound(GPU_Target* target, float x1, float y1, float x2, float y2, float radius, SDL_Color color);
sub GPU_RectangleRound(GPU_Target                    $target # Typedef<GPU_Target>->|GPU_Target|*
                      ,num32                         $x1 # float
                      ,num32                         $y1 # float
                      ,num32                         $x2 # float
                      ,num32                         $y2 # float
                      ,num32                         $radius # float
                      ,SDL_Color                     $color # Typedef<SDL_Color>->|SDL_Color|
                       ) is native(LIB)  is export { * }

#-From /root/piko/tmp/sdl-gpu/include/SDL_gpu.h:1473
#/*! Renders a colored rounded (filleted) rectangle outline.
# * \param target The destination render target
# * \param rect The rectangular area to draw
# * \param radius The radius of the corners
# * \param color The color of the shape to render
# */
#DECLSPEC void SDLCALL GPU_RectangleRound2(GPU_Target* target, GPU_Rect rect, float radius, SDL_Color color);
sub GPU_RectangleRound2(GPU_Target                    $target # Typedef<GPU_Target>->|GPU_Target|*
                       ,GPU_Rect                      $rect # Typedef<GPU_Rect>->|GPU_Rect|
                       ,num32                         $radius # float
                       ,SDL_Color                     $color # Typedef<SDL_Color>->|SDL_Color|
                        ) is native(LIB)  is export { * }

#-From /root/piko/tmp/sdl-gpu/include/SDL_gpu.h:1484
#/*! Renders a colored filled rounded (filleted) rectangle.
# * \param target The destination render target
# * \param x1 x-coord of top-left corner
# * \param y1 y-coord of top-left corner
# * \param x2 x-coord of bottom-right corner
# * \param y2 y-coord of bottom-right corner
# * \param radius The radius of the corners
# * \param color The color of the shape to render
# */
#DECLSPEC void SDLCALL GPU_RectangleRoundFilled(GPU_Target* target, float x1, float y1, float x2, float y2, float radius, SDL_Color color);
sub GPU_RectangleRoundFilled(GPU_Target                    $target # Typedef<GPU_Target>->|GPU_Target|*
                            ,num32                         $x1 # float
                            ,num32                         $y1 # float
                            ,num32                         $x2 # float
                            ,num32                         $y2 # float
                            ,num32                         $radius # float
                            ,SDL_Color                     $color # Typedef<SDL_Color>->|SDL_Color|
                             ) is native(LIB)  is export { * }

#-From /root/piko/tmp/sdl-gpu/include/SDL_gpu.h:1492
#/*! Renders a colored filled rounded (filleted) rectangle.
# * \param target The destination render target
# * \param rect The rectangular area to draw
# * \param radius The radius of the corners
# * \param color The color of the shape to render
# */
#DECLSPEC void SDLCALL GPU_RectangleRoundFilled2(GPU_Target* target, GPU_Rect rect, float radius, SDL_Color color);
sub GPU_RectangleRoundFilled2(GPU_Target                    $target # Typedef<GPU_Target>->|GPU_Target|*
                             ,GPU_Rect                      $rect # Typedef<GPU_Rect>->|GPU_Rect|
                             ,num32                         $radius # float
                             ,SDL_Color                     $color # Typedef<SDL_Color>->|SDL_Color|
                              ) is native(LIB)  is export { * }

#-From /root/piko/tmp/sdl-gpu/include/SDL_gpu.h:1500
#/*! Renders a colored polygon outline.  The vertices are expected to define a convex polygon.
# * \param target The destination render target
# * \param num_vertices Number of vertices (x and y pairs)
# * \param vertices An array of vertex positions stored as interlaced x and y coords, e.g. {x1, y1, x2, y2, ...}
# * \param color The color of the shape to render
# */
#DECLSPEC void SDLCALL GPU_Polygon(GPU_Target* target, unsigned int num_vertices, float* vertices, SDL_Color color);
sub GPU_Polygon(GPU_Target                    $target # Typedef<GPU_Target>->|GPU_Target|*
               ,uint32                        $num_vertices # unsigned int
               ,Pointer[num32]                $vertices # float*
               ,SDL_Color                     $color # Typedef<SDL_Color>->|SDL_Color|
                ) is native(LIB)  is export { * }

#-From /root/piko/tmp/sdl-gpu/include/SDL_gpu.h:1508
#/*! Renders a colored filled polygon.  The vertices are expected to define a convex polygon.
# * \param target The destination render target
# * \param num_vertices Number of vertices (x and y pairs)
# * \param vertices An array of vertex positions stored as interlaced x and y coords, e.g. {x1, y1, x2, y2, ...}
# * \param color The color of the shape to render
# */
#DECLSPEC void SDLCALL GPU_PolygonFilled(GPU_Target* target, unsigned int num_vertices, float* vertices, SDL_Color color);
sub GPU_PolygonFilled(GPU_Target                    $target # Typedef<GPU_Target>->|GPU_Target|*
                     ,uint32                        $num_vertices # unsigned int
                     ,Pointer[num32]                $vertices # float*
                     ,SDL_Color                     $color # Typedef<SDL_Color>->|SDL_Color|
                      ) is native(LIB)  is export { * }

#-From /root/piko/tmp/sdl-gpu/include/SDL_gpu.h:1524
#/*! Creates a new, empty shader program.  You will need to compile shaders, attach them to the program, then link the program.
# * \see GPU_AttachShader
# * \see GPU_LinkShaderProgram
# */
#DECLSPEC Uint32 SDLCALL GPU_CreateShaderProgram(void);
sub GPU_CreateShaderProgram(
                            ) is native(LIB) returns uint32 is export { * }

#-From /root/piko/tmp/sdl-gpu/include/SDL_gpu.h:1527
#/*! Deletes a shader program. */
#DECLSPEC void SDLCALL GPU_FreeShaderProgram(Uint32 program_object);
sub GPU_FreeShaderProgram(uint32 $program_object # Typedef<Uint32>->|Typedef<uint32>->|unsigned int||
                          ) is native(LIB)  is export { * }

#-From /root/piko/tmp/sdl-gpu/include/SDL_gpu.h:1530
#/*! Loads shader source from an SDL_RWops, compiles it, and returns the new shader object. */
#DECLSPEC Uint32 SDLCALL GPU_CompileShader_RW(GPU_ShaderEnum shaderype, SDL_RWops* shader_source, Uint8 free_rwops);
sub GPU_CompileShader_RW(int32                         $shaderype # GPU_ShaderEnum
                        ,SDL_RWops                     $shader_source # Typedef<SDL_RWops>->|SDL_RWops|*
                        ,uint8                       $free_rwops # Typedef<Uint8>->|Typedef<uint8>->|unsigned char||
                         ) is native(LIB) returns uint32 is export { * }

#-From /root/piko/tmp/sdl-gpu/include/SDL_gpu.h:1533
#/*! Compiles shader source and returns the new shader object. */
#DECLSPEC Uint32 SDLCALL GPU_CompileShader(GPU_ShaderEnum shaderype, const char* shader_source);
sub GPU_CompileShader(int32                         $shaderype # GPU_ShaderEnum
                     ,Str                           $shader_source # const char*
                      ) is native(LIB) returns uint32 is export { * }

#-From /root/piko/tmp/sdl-gpu/include/SDL_gpu.h:1536
#/*! Loads shader source from a file, compiles it, and returns the new shader object. */
#DECLSPEC Uint32 SDLCALL GPU_LoadShader(GPU_ShaderEnum shaderype, const char* filename);
sub GPU_LoadShader(int32                         $shaderype # GPU_ShaderEnum
                  ,Str                           $filename # const char*
                   ) is native(LIB) returns uint32 is export { * }

#-From /root/piko/tmp/sdl-gpu/include/SDL_gpu.h:1539
#/*! Creates and links a shader program with the given shader objects. */
#DECLSPEC Uint32 SDLCALL GPU_LinkShaders(Uint32 shader_object1, Uint32 shader_object2);
sub GPU_LinkShaders(uint32                      $shader_object1 # Typedef<Uint32>->|Typedef<uint32>->|unsigned int||
                   ,uint32                      $shader_object2 # Typedef<Uint32>->|Typedef<uint32>->|unsigned int||
                    ) is native(LIB) returns uint32 is export { * }

#-From /root/piko/tmp/sdl-gpu/include/SDL_gpu.h:1542
#/*! Creates and links a shader program with the given shader objects. */
#DECLSPEC Uint32 SDLCALL GPU_LinkManyShaders(Uint32 *shader_objects, int count);
sub GPU_LinkManyShaders(Pointer[uint32]             $shader_objects # Typedef<Uint32>->|Typedef<uint32>->|unsigned int||*
                       ,int32                         $count # int
                        ) is native(LIB) returns uint32 is export { * }

#-From /root/piko/tmp/sdl-gpu/include/SDL_gpu.h:1545
#/*! Deletes a shader object. */
#DECLSPEC void SDLCALL GPU_FreeShader(Uint32 shader_object);
sub GPU_FreeShader(uint32 $shader_object # Typedef<Uint32>->|Typedef<uint32>->|unsigned int||
                   ) is native(LIB)  is export { * }

#-From /root/piko/tmp/sdl-gpu/include/SDL_gpu.h:1548
#/*! Attaches a shader object to a shader program for future linking. */
#DECLSPEC void SDLCALL GPU_AttachShader(Uint32 program_object, Uint32 shader_object);
sub GPU_AttachShader(uint32                      $program_object # Typedef<Uint32>->|Typedef<uint32>->|unsigned int||
                    ,uint32                      $shader_object # Typedef<Uint32>->|Typedef<uint32>->|unsigned int||
                     ) is native(LIB)  is export { * }

#-From /root/piko/tmp/sdl-gpu/include/SDL_gpu.h:1551
#/*! Detaches a shader object from a shader program. */
#DECLSPEC void SDLCALL GPU_DetachShader(Uint32 program_object, Uint32 shader_object);
sub GPU_DetachShader(uint32                      $program_object # Typedef<Uint32>->|Typedef<uint32>->|unsigned int||
                    ,uint32                      $shader_object # Typedef<Uint32>->|Typedef<uint32>->|unsigned int||
                     ) is native(LIB)  is export { * }

#-From /root/piko/tmp/sdl-gpu/include/SDL_gpu.h:1554
#/*! Links a shader program with any attached shader objects. */
#DECLSPEC Uint8 SDLCALL GPU_LinkShaderProgram(Uint32 program_object);
sub GPU_LinkShaderProgram(uint32 $program_object # Typedef<Uint32>->|Typedef<uint32>->|unsigned int||
                          ) is native(LIB) returns uint8 is export { * }

#-From /root/piko/tmp/sdl-gpu/include/SDL_gpu.h:1557
#/*! \return The current shader program */
#DECLSPEC Uint32 SDLCALL GPU_GetCurrentShaderProgram(void);
sub GPU_GetCurrentShaderProgram(
                                ) is native(LIB) returns uint32 is export { * }

#-From /root/piko/tmp/sdl-gpu/include/SDL_gpu.h:1560
#/*! Returns 1 if the given shader program is a default shader for the current context, 0 otherwise. */
#DECLSPEC Uint8 SDLCALL GPU_IsDefaultShaderProgram(Uint32 program_object);
sub GPU_IsDefaultShaderProgram(uint32 $program_object # Typedef<Uint32>->|Typedef<uint32>->|unsigned int||
                               ) is native(LIB) returns uint8 is export { * }

#-From /root/piko/tmp/sdl-gpu/include/SDL_gpu.h:1563
#/*! Activates the given shader program.  Passing NULL for 'block' will disable the built-in shader variables for custom shaders until a GPU_ShaderBlock is set again. */
#DECLSPEC void SDLCALL GPU_ActivateShaderProgram(Uint32 program_object, GPU_ShaderBlock* block);
sub GPU_ActivateShaderProgram(uint32                      $program_object # Typedef<Uint32>->|Typedef<uint32>->|unsigned int||
                             ,GPU_ShaderBlock               $block # Typedef<GPU_ShaderBlock>->|GPU_ShaderBlock|*
                              ) is native(LIB)  is export { * }

#-From /root/piko/tmp/sdl-gpu/include/SDL_gpu.h:1566
#/*! Deactivates the current shader program (activates program 0). */
#DECLSPEC void SDLCALL GPU_DeactivateShaderProgram(void);
sub GPU_DeactivateShaderProgram(
                                ) is native(LIB)  is export { * }

#-From /root/piko/tmp/sdl-gpu/include/SDL_gpu.h:1569
#/*! Returns the last shader log message. */
#DECLSPEC const char* SDLCALL GPU_GetShaderMessage(void);
sub GPU_GetShaderMessage(
                         ) is native(LIB) returns Str is export { * }

#-From /root/piko/tmp/sdl-gpu/include/SDL_gpu.h:1572
#/*! Returns an integer representing the location of the specified attribute shader variable. */
#DECLSPEC int SDLCALL GPU_GetAttributeLocation(Uint32 program_object, const char* attrib_name);
sub GPU_GetAttributeLocation(uint32                      $program_object # Typedef<Uint32>->|Typedef<uint32>->|unsigned int||
                            ,Str                           $attrib_name # const char*
                             ) is native(LIB) returns int32 is export { * }

#-From /root/piko/tmp/sdl-gpu/include/SDL_gpu.h:1575
#/*! Returns a filled GPU_AttributeFormat object. */
#DECLSPEC GPU_AttributeFormat SDLCALL GPU_MakeAttributeFormat(int num_elems_per_vertex, GPU_TypeEnum type, Uint8 normalize, int stride_bytes, int offset_bytes);
sub GPU_MakeAttributeFormat(int32                         $num_elems_per_vertex # int
                           ,uint32                      $type # Typedef<GPU_TypeEnum>->|Typedef<Uint32>->|Typedef<uint32>->|unsigned int|||
                           ,uint8                       $normalize # Typedef<Uint8>->|Typedef<uint8>->|unsigned char||
                           ,int32                         $stride_bytes # int
                           ,int32                         $offset_bytes # int
                            ) is native(LIB) returns GPU_AttributeFormat is export { * }

#-From /root/piko/tmp/sdl-gpu/include/SDL_gpu.h:1578
#/*! Returns a filled GPU_Attribute object. */
#DECLSPEC GPU_Attribute SDLCALL GPU_MakeAttribute(int location, void* values, GPU_AttributeFormat format);
sub GPU_MakeAttribute(int32                         $location # int
                     ,Pointer                       $values # void*
                     ,GPU_AttributeFormat           $format # Typedef<GPU_AttributeFormat>->|GPU_AttributeFormat|
                      ) is native(LIB) returns GPU_Attribute is export { * }

#-From /root/piko/tmp/sdl-gpu/include/SDL_gpu.h:1581
#/*! Returns an integer representing the location of the specified uniform shader variable. */
#DECLSPEC int SDLCALL GPU_GetUniformLocation(Uint32 program_object, const char* uniform_name);
sub GPU_GetUniformLocation(uint32                      $program_object # Typedef<Uint32>->|Typedef<uint32>->|unsigned int||
                          ,Str                           $uniform_name # const char*
                           ) is native(LIB) returns int32 is export { * }

#-From /root/piko/tmp/sdl-gpu/include/SDL_gpu.h:1584
#/*! Loads the given shader program's built-in attribute and uniform locations. */
#DECLSPEC GPU_ShaderBlock SDLCALL GPU_LoadShaderBlock(Uint32 program_object, const char* position_name, const char* texcoord_name, const char* color_name, const char* modelViewMatrix_name);
sub GPU_LoadShaderBlock(uint32                      $program_object # Typedef<Uint32>->|Typedef<uint32>->|unsigned int||
                       ,Str                           $position_name # const char*
                       ,Str                           $texcoord_name # const char*
                       ,Str                           $color_name # const char*
                       ,Str                           $modelViewMatrix_name # const char*
                        ) is native(LIB) returns GPU_ShaderBlock is export { * }

#-From /root/piko/tmp/sdl-gpu/include/SDL_gpu.h:1587
#/*! Sets the current shader block to use the given attribute and uniform locations. */
#DECLSPEC void SDLCALL GPU_SetShaderBlock(GPU_ShaderBlock block);
sub GPU_SetShaderBlock(GPU_ShaderBlock $block # Typedef<GPU_ShaderBlock>->|GPU_ShaderBlock|
                       ) is native(LIB)  is export { * }

#-From /root/piko/tmp/sdl-gpu/include/SDL_gpu.h:1593
#/*! Sets the given image unit to the given image so that a custom shader can sample multiple textures.
#    \param image The source image/texture.  Pass NULL to disable the image unit.
#    \param location The uniform location of a texture sampler
#    \param image_unit The index of the texture unit to set.  0 is the first unit, which is used by SDL_gpu's blitting functions.  1 would be the second unit. */
#DECLSPEC void SDLCALL GPU_SetShaderImage(GPU_Image* image, int location, int image_unit);
sub GPU_SetShaderImage(GPU_Image                     $image # Typedef<GPU_Image>->|GPU_Image|*
                      ,int32                         $location # int
                      ,int32                         $image_unit # int
                       ) is native(LIB)  is export { * }

#-From /root/piko/tmp/sdl-gpu/include/SDL_gpu.h:1596
#/*! Fills "values" with the value of the uniform shader variable at the given location. */
#DECLSPEC void SDLCALL GPU_GetUniformiv(Uint32 program_object, int location, int* values);
sub GPU_GetUniformiv(uint32                      $program_object # Typedef<Uint32>->|Typedef<uint32>->|unsigned int||
                    ,int32                         $location # int
                    ,Pointer[int32]                $values # int*
                     ) is native(LIB)  is export { * }

#-From /root/piko/tmp/sdl-gpu/include/SDL_gpu.h:1600
#/*! Sets the value of the integer uniform shader variable at the given location.
#    This is equivalent to calling GPU_SetUniformiv(location, 1, 1, &value). */
#DECLSPEC void SDLCALL GPU_SetUniformi(int location, int value);
sub GPU_SetUniformi(int32                         $location # int
                   ,int32                         $value # int
                    ) is native(LIB)  is export { * }

#-From /root/piko/tmp/sdl-gpu/include/SDL_gpu.h:1603
#/*! Sets the value of the integer uniform shader variable at the given location. */
#DECLSPEC void SDLCALL GPU_SetUniformiv(int location, int num_elements_per_value, int num_values, int* values);
sub GPU_SetUniformiv(int32                         $location # int
                    ,int32                         $num_elements_per_value # int
                    ,int32                         $num_values # int
                    ,Pointer[int32]                $values # int*
                     ) is native(LIB)  is export { * }

#-From /root/piko/tmp/sdl-gpu/include/SDL_gpu.h:1606
#/*! Fills "values" with the value of the uniform shader variable at the given location. */
#DECLSPEC void SDLCALL GPU_GetUniformuiv(Uint32 program_object, int location, unsigned int* values);
sub GPU_GetUniformuiv(uint32                      $program_object # Typedef<Uint32>->|Typedef<uint32>->|unsigned int||
                     ,int32                         $location # int
                     ,Pointer[uint32]               $values # unsigned int*
                      ) is native(LIB)  is export { * }

#-From /root/piko/tmp/sdl-gpu/include/SDL_gpu.h:1610
#/*! Sets the value of the unsigned integer uniform shader variable at the given location.
#    This is equivalent to calling GPU_SetUniformuiv(location, 1, 1, &value). */
#DECLSPEC void SDLCALL GPU_SetUniformui(int location, unsigned int value);
sub GPU_SetUniformui(int32                         $location # int
                    ,uint32                        $value # unsigned int
                     ) is native(LIB)  is export { * }

#-From /root/piko/tmp/sdl-gpu/include/SDL_gpu.h:1613
#/*! Sets the value of the unsigned integer uniform shader variable at the given location. */
#DECLSPEC void SDLCALL GPU_SetUniformuiv(int location, int num_elements_per_value, int num_values, unsigned int* values);
sub GPU_SetUniformuiv(int32                         $location # int
                     ,int32                         $num_elements_per_value # int
                     ,int32                         $num_values # int
                     ,Pointer[uint32]               $values # unsigned int*
                      ) is native(LIB)  is export { * }

#-From /root/piko/tmp/sdl-gpu/include/SDL_gpu.h:1616
#/*! Fills "values" with the value of the uniform shader variable at the given location. */
#DECLSPEC void SDLCALL GPU_GetUniformfv(Uint32 program_object, int location, float* values);
sub GPU_GetUniformfv(uint32                      $program_object # Typedef<Uint32>->|Typedef<uint32>->|unsigned int||
                    ,int32                         $location # int
                    ,Pointer[num32]                $values # float*
                     ) is native(LIB)  is export { * }

#-From /root/piko/tmp/sdl-gpu/include/SDL_gpu.h:1620
#/*! Sets the value of the floating point uniform shader variable at the given location.
#    This is equivalent to calling GPU_SetUniformfv(location, 1, 1, &value). */
#DECLSPEC void SDLCALL GPU_SetUniformf(int location, float value);
sub GPU_SetUniformf(int32                         $location # int
                   ,num32                         $value # float
                    ) is native(LIB)  is export { * }

#-From /root/piko/tmp/sdl-gpu/include/SDL_gpu.h:1623
#/*! Sets the value of the floating point uniform shader variable at the given location. */
#DECLSPEC void SDLCALL GPU_SetUniformfv(int location, int num_elements_per_value, int num_values, float* values);
sub GPU_SetUniformfv(int32                         $location # int
                    ,int32                         $num_elements_per_value # int
                    ,int32                         $num_values # int
                    ,Pointer[num32]                $values # float*
                     ) is native(LIB)  is export { * }

#-From /root/piko/tmp/sdl-gpu/include/SDL_gpu.h:1626
#/*! Fills "values" with the value of the uniform shader variable at the given location.  The results are identical to calling GPU_GetUniformfv().  Matrices are gotten in column-major order. */
#DECLSPEC void SDLCALL GPU_GetUniformMatrixfv(Uint32 program_object, int location, float* values);
sub GPU_GetUniformMatrixfv(uint32                      $program_object # Typedef<Uint32>->|Typedef<uint32>->|unsigned int||
                          ,int32                         $location # int
                          ,Pointer[num32]                $values # float*
                           ) is native(LIB)  is export { * }

#-From /root/piko/tmp/sdl-gpu/include/SDL_gpu.h:1629
#/*! Sets the value of the matrix uniform shader variable at the given location.  The size of the matrices sent is specified by num_rows and num_columns.  Rows and columns must be between 2 and 4. */
#DECLSPEC void SDLCALL GPU_SetUniformMatrixfv(int location, int num_matrices, int num_rows, int num_columns, Uint8 transpose, float* values);
sub GPU_SetUniformMatrixfv(int32                         $location # int
                          ,int32                         $num_matrices # int
                          ,int32                         $num_rows # int
                          ,int32                         $num_columns # int
                          ,uint8                       $transpose # Typedef<Uint8>->|Typedef<uint8>->|unsigned char||
                          ,Pointer[num32]                $values # float*
                           ) is native(LIB)  is export { * }

#-From /root/piko/tmp/sdl-gpu/include/SDL_gpu.h:1632
#/*! Sets a constant-value shader attribute that will be used for each rendered vertex. */
#DECLSPEC void SDLCALL GPU_SetAttributef(int location, float value);
sub GPU_SetAttributef(int32                         $location # int
                     ,num32                         $value # float
                      ) is native(LIB)  is export { * }

#-From /root/piko/tmp/sdl-gpu/include/SDL_gpu.h:1635
#/*! Sets a constant-value shader attribute that will be used for each rendered vertex. */
#DECLSPEC void SDLCALL GPU_SetAttributei(int location, int value);
sub GPU_SetAttributei(int32                         $location # int
                     ,int32                         $value # int
                      ) is native(LIB)  is export { * }

#-From /root/piko/tmp/sdl-gpu/include/SDL_gpu.h:1638
#/*! Sets a constant-value shader attribute that will be used for each rendered vertex. */
#DECLSPEC void SDLCALL GPU_SetAttributeui(int location, unsigned int value);
sub GPU_SetAttributeui(int32                         $location # int
                      ,uint32                        $value # unsigned int
                       ) is native(LIB)  is export { * }

#-From /root/piko/tmp/sdl-gpu/include/SDL_gpu.h:1641
#/*! Sets a constant-value shader attribute that will be used for each rendered vertex. */
#DECLSPEC void SDLCALL GPU_SetAttributefv(int location, int num_elements, float* value);
sub GPU_SetAttributefv(int32                         $location # int
                      ,int32                         $num_elements # int
                      ,Pointer[num32]                $value # float*
                       ) is native(LIB)  is export { * }

#-From /root/piko/tmp/sdl-gpu/include/SDL_gpu.h:1644
#/*! Sets a constant-value shader attribute that will be used for each rendered vertex. */
#DECLSPEC void SDLCALL GPU_SetAttributeiv(int location, int num_elements, int* value);
sub GPU_SetAttributeiv(int32                         $location # int
                      ,int32                         $num_elements # int
                      ,Pointer[int32]                $value # int*
                       ) is native(LIB)  is export { * }

#-From /root/piko/tmp/sdl-gpu/include/SDL_gpu.h:1647
#/*! Sets a constant-value shader attribute that will be used for each rendered vertex. */
#DECLSPEC void SDLCALL GPU_SetAttributeuiv(int location, int num_elements, unsigned int* value);
sub GPU_SetAttributeuiv(int32                         $location # int
                       ,int32                         $num_elements # int
                       ,Pointer[uint32]               $value # unsigned int*
                        ) is native(LIB)  is export { * }

#-From /root/piko/tmp/sdl-gpu/include/SDL_gpu.h:1650
#/*! Enables a shader attribute and sets its source data. */
#DECLSPEC void SDLCALL GPU_SetAttributeSource(int num_values, GPU_Attribute source);
sub GPU_SetAttributeSource(int32                         $num_values # int
                          ,GPU_Attribute                 $source # Typedef<GPU_Attribute>->|GPU_Attribute|
                           ) is native(LIB)  is export { * }

## Externs

