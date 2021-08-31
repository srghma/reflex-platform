{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.WebGLRenderingContextBase
       (activeTexture, attachShader, bindAttribLocation, bindBuffer,
        bindFramebuffer, bindRenderbuffer, bindTexture, blendColor,
        blendEquation, blendEquationSeparate, blendFunc, blendFuncSeparate,
        bufferData, bufferDataPtr, bufferSubData, checkFramebufferStatus,
        checkFramebufferStatus_, clear, clearColor, clearDepth,
        clearStencil, colorMask, compileShader, compressedTexImage2D,
        compressedTexSubImage2D, copyTexImage2D, copyTexSubImage2D,
        createBuffer, createBuffer_, createFramebuffer, createFramebuffer_,
        createProgram, createProgram_, createRenderbuffer,
        createRenderbuffer_, createShader, createShader_, createTexture,
        createTexture_, cullFace, deleteBuffer, deleteFramebuffer,
        deleteProgram, deleteRenderbuffer, deleteShader, deleteTexture,
        depthFunc, depthMask, depthRange, detachShader, disable,
        disableVertexAttribArray, drawArrays, drawElements, enable,
        enableVertexAttribArray, finish, flush, framebufferRenderbuffer,
        framebufferTexture2D, frontFace, generateMipmap, getActiveAttrib,
        getActiveAttrib_, getActiveUniform, getActiveUniform_,
        getAttachedShaders, getAttachedShaders_, getAttribLocation,
        getAttribLocation_, getBufferParameter, getBufferParameter_,
        getContextAttributes, getContextAttributes_,
        getContextAttributesUnsafe, getContextAttributesUnchecked,
        getError, getError_, getSupportedExtensions,
        getSupportedExtensions_, getExtension, getExtension_,
        getExtensionUnsafe, getExtensionUnchecked,
        getFramebufferAttachmentParameter,
        getFramebufferAttachmentParameter_, getParameter, getParameter_,
        getProgramParameter, getProgramParameter_, getProgramInfoLog,
        getProgramInfoLog_, getProgramInfoLogUnsafe,
        getProgramInfoLogUnchecked, getRenderbufferParameter,
        getRenderbufferParameter_, getShaderParameter, getShaderParameter_,
        getShaderInfoLog, getShaderInfoLog_, getShaderInfoLogUnsafe,
        getShaderInfoLogUnchecked, getShaderPrecisionFormat,
        getShaderPrecisionFormat_, getShaderSource, getShaderSource_,
        getShaderSourceUnsafe, getShaderSourceUnchecked, getTexParameter,
        getTexParameter_, getUniform, getUniform_, getUniformLocation,
        getUniformLocation_, getVertexAttrib, getVertexAttrib_,
        getVertexAttribOffset, getVertexAttribOffset_, hint, isBuffer,
        isBuffer_, isContextLost, isContextLost_, isEnabled, isEnabled_,
        isFramebuffer, isFramebuffer_, isProgram, isProgram_,
        isRenderbuffer, isRenderbuffer_, isShader, isShader_, isTexture,
        isTexture_, lineWidth, linkProgram, pixelStorei, polygonOffset,
        readPixels, releaseShaderCompiler, renderbufferStorage,
        sampleCoverage, scissor, shaderSource, stencilFunc,
        stencilFuncSeparate, stencilMask, stencilMaskSeparate, stencilOp,
        stencilOpSeparate, texParameterf, texParameteri, texImage2DView,
        texImage2D, texSubImage2DView, texSubImage2D, uniform1f, uniform2f,
        uniform3f, uniform4f, uniform1i, uniform2i, uniform3i, uniform4i,
        uniform1fv, uniform2fv, uniform3fv, uniform4fv, uniform1iv,
        uniform2iv, uniform3iv, uniform4iv, uniformMatrix2fv,
        uniformMatrix3fv, uniformMatrix4fv, useProgram, validateProgram,
        vertexAttrib1f, vertexAttrib2f, vertexAttrib3f, vertexAttrib4f,
        vertexAttrib1fv, vertexAttrib2fv, vertexAttrib3fv, vertexAttrib4fv,
        vertexAttribPointer, viewport, pattern DEPTH_BUFFER_BIT,
        pattern STENCIL_BUFFER_BIT, pattern COLOR_BUFFER_BIT,
        pattern POINTS, pattern LINES, pattern LINE_LOOP,
        pattern LINE_STRIP, pattern TRIANGLES, pattern TRIANGLE_STRIP,
        pattern TRIANGLE_FAN, pattern ZERO, pattern ONE, pattern SRC_COLOR,
        pattern ONE_MINUS_SRC_COLOR, pattern SRC_ALPHA,
        pattern ONE_MINUS_SRC_ALPHA, pattern DST_ALPHA,
        pattern ONE_MINUS_DST_ALPHA, pattern DST_COLOR,
        pattern ONE_MINUS_DST_COLOR, pattern SRC_ALPHA_SATURATE,
        pattern FUNC_ADD, pattern BLEND_EQUATION,
        pattern BLEND_EQUATION_RGB, pattern BLEND_EQUATION_ALPHA,
        pattern FUNC_SUBTRACT, pattern FUNC_REVERSE_SUBTRACT,
        pattern BLEND_DST_RGB, pattern BLEND_SRC_RGB,
        pattern BLEND_DST_ALPHA, pattern BLEND_SRC_ALPHA,
        pattern CONSTANT_COLOR, pattern ONE_MINUS_CONSTANT_COLOR,
        pattern CONSTANT_ALPHA, pattern ONE_MINUS_CONSTANT_ALPHA,
        pattern BLEND_COLOR, pattern ARRAY_BUFFER,
        pattern ELEMENT_ARRAY_BUFFER, pattern ARRAY_BUFFER_BINDING,
        pattern ELEMENT_ARRAY_BUFFER_BINDING, pattern STREAM_DRAW,
        pattern STATIC_DRAW, pattern DYNAMIC_DRAW, pattern BUFFER_SIZE,
        pattern BUFFER_USAGE, pattern CURRENT_VERTEX_ATTRIB, pattern FRONT,
        pattern BACK, pattern FRONT_AND_BACK, pattern TEXTURE_2D,
        pattern CULL_FACE, pattern BLEND, pattern DITHER,
        pattern STENCIL_TEST, pattern DEPTH_TEST, pattern SCISSOR_TEST,
        pattern POLYGON_OFFSET_FILL, pattern SAMPLE_ALPHA_TO_COVERAGE,
        pattern SAMPLE_COVERAGE, pattern NO_ERROR, pattern INVALID_ENUM,
        pattern INVALID_VALUE, pattern INVALID_OPERATION,
        pattern OUT_OF_MEMORY, pattern CW, pattern CCW, pattern LINE_WIDTH,
        pattern ALIASED_POINT_SIZE_RANGE, pattern ALIASED_LINE_WIDTH_RANGE,
        pattern CULL_FACE_MODE, pattern FRONT_FACE, pattern DEPTH_RANGE,
        pattern DEPTH_WRITEMASK, pattern DEPTH_CLEAR_VALUE,
        pattern DEPTH_FUNC, pattern STENCIL_CLEAR_VALUE,
        pattern STENCIL_FUNC, pattern STENCIL_FAIL,
        pattern STENCIL_PASS_DEPTH_FAIL, pattern STENCIL_PASS_DEPTH_PASS,
        pattern STENCIL_REF, pattern STENCIL_VALUE_MASK,
        pattern STENCIL_WRITEMASK, pattern STENCIL_BACK_FUNC,
        pattern STENCIL_BACK_FAIL, pattern STENCIL_BACK_PASS_DEPTH_FAIL,
        pattern STENCIL_BACK_PASS_DEPTH_PASS, pattern STENCIL_BACK_REF,
        pattern STENCIL_BACK_VALUE_MASK, pattern STENCIL_BACK_WRITEMASK,
        pattern VIEWPORT, pattern SCISSOR_BOX, pattern COLOR_CLEAR_VALUE,
        pattern COLOR_WRITEMASK, pattern UNPACK_ALIGNMENT,
        pattern PACK_ALIGNMENT, pattern MAX_TEXTURE_SIZE,
        pattern MAX_VIEWPORT_DIMS, pattern SUBPIXEL_BITS, pattern RED_BITS,
        pattern GREEN_BITS, pattern BLUE_BITS, pattern ALPHA_BITS,
        pattern DEPTH_BITS, pattern STENCIL_BITS,
        pattern POLYGON_OFFSET_UNITS, pattern POLYGON_OFFSET_FACTOR,
        pattern TEXTURE_BINDING_2D, pattern SAMPLE_BUFFERS,
        pattern SAMPLES, pattern SAMPLE_COVERAGE_VALUE,
        pattern SAMPLE_COVERAGE_INVERT, pattern COMPRESSED_TEXTURE_FORMATS,
        pattern DONT_CARE, pattern FASTEST, pattern NICEST,
        pattern GENERATE_MIPMAP_HINT, pattern BYTE, pattern UNSIGNED_BYTE,
        pattern SHORT, pattern UNSIGNED_SHORT, pattern INT,
        pattern UNSIGNED_INT, pattern FLOAT, pattern DEPTH_COMPONENT,
        pattern ALPHA, pattern RGB, pattern RGBA, pattern LUMINANCE,
        pattern LUMINANCE_ALPHA, pattern UNSIGNED_SHORT_4_4_4_4,
        pattern UNSIGNED_SHORT_5_5_5_1, pattern UNSIGNED_SHORT_5_6_5,
        pattern FRAGMENT_SHADER, pattern VERTEX_SHADER,
        pattern MAX_VERTEX_ATTRIBS, pattern MAX_VERTEX_UNIFORM_VECTORS,
        pattern MAX_VARYING_VECTORS,
        pattern MAX_COMBINED_TEXTURE_IMAGE_UNITS,
        pattern MAX_VERTEX_TEXTURE_IMAGE_UNITS,
        pattern MAX_TEXTURE_IMAGE_UNITS,
        pattern MAX_FRAGMENT_UNIFORM_VECTORS, pattern SHADER_TYPE,
        pattern DELETE_STATUS, pattern LINK_STATUS,
        pattern VALIDATE_STATUS, pattern ATTACHED_SHADERS,
        pattern ACTIVE_UNIFORMS, pattern ACTIVE_ATTRIBUTES,
        pattern SHADING_LANGUAGE_VERSION, pattern CURRENT_PROGRAM,
        pattern NEVER, pattern LESS, pattern EQUAL, pattern LEQUAL,
        pattern GREATER, pattern NOTEQUAL, pattern GEQUAL, pattern ALWAYS,
        pattern KEEP, pattern REPLACE, pattern INCR, pattern DECR,
        pattern INVERT, pattern INCR_WRAP, pattern DECR_WRAP,
        pattern VENDOR, pattern RENDERER, pattern VERSION, pattern NEAREST,
        pattern LINEAR, pattern NEAREST_MIPMAP_NEAREST,
        pattern LINEAR_MIPMAP_NEAREST, pattern NEAREST_MIPMAP_LINEAR,
        pattern LINEAR_MIPMAP_LINEAR, pattern TEXTURE_MAG_FILTER,
        pattern TEXTURE_MIN_FILTER, pattern TEXTURE_WRAP_S,
        pattern TEXTURE_WRAP_T, pattern TEXTURE, pattern TEXTURE_CUBE_MAP,
        pattern TEXTURE_BINDING_CUBE_MAP,
        pattern TEXTURE_CUBE_MAP_POSITIVE_X,
        pattern TEXTURE_CUBE_MAP_NEGATIVE_X,
        pattern TEXTURE_CUBE_MAP_POSITIVE_Y,
        pattern TEXTURE_CUBE_MAP_NEGATIVE_Y,
        pattern TEXTURE_CUBE_MAP_POSITIVE_Z,
        pattern TEXTURE_CUBE_MAP_NEGATIVE_Z,
        pattern MAX_CUBE_MAP_TEXTURE_SIZE, pattern TEXTURE0,
        pattern TEXTURE1, pattern TEXTURE2, pattern TEXTURE3,
        pattern TEXTURE4, pattern TEXTURE5, pattern TEXTURE6,
        pattern TEXTURE7, pattern TEXTURE8, pattern TEXTURE9,
        pattern TEXTURE10, pattern TEXTURE11, pattern TEXTURE12,
        pattern TEXTURE13, pattern TEXTURE14, pattern TEXTURE15,
        pattern TEXTURE16, pattern TEXTURE17, pattern TEXTURE18,
        pattern TEXTURE19, pattern TEXTURE20, pattern TEXTURE21,
        pattern TEXTURE22, pattern TEXTURE23, pattern TEXTURE24,
        pattern TEXTURE25, pattern TEXTURE26, pattern TEXTURE27,
        pattern TEXTURE28, pattern TEXTURE29, pattern TEXTURE30,
        pattern TEXTURE31, pattern ACTIVE_TEXTURE, pattern REPEAT,
        pattern CLAMP_TO_EDGE, pattern MIRRORED_REPEAT, pattern FLOAT_VEC2,
        pattern FLOAT_VEC3, pattern FLOAT_VEC4, pattern INT_VEC2,
        pattern INT_VEC3, pattern INT_VEC4, pattern BOOL,
        pattern BOOL_VEC2, pattern BOOL_VEC3, pattern BOOL_VEC4,
        pattern FLOAT_MAT2, pattern FLOAT_MAT3, pattern FLOAT_MAT4,
        pattern SAMPLER_2D, pattern SAMPLER_CUBE,
        pattern VERTEX_ATTRIB_ARRAY_ENABLED,
        pattern VERTEX_ATTRIB_ARRAY_SIZE,
        pattern VERTEX_ATTRIB_ARRAY_STRIDE,
        pattern VERTEX_ATTRIB_ARRAY_TYPE,
        pattern VERTEX_ATTRIB_ARRAY_NORMALIZED,
        pattern VERTEX_ATTRIB_ARRAY_POINTER,
        pattern VERTEX_ATTRIB_ARRAY_BUFFER_BINDING,
        pattern IMPLEMENTATION_COLOR_READ_TYPE,
        pattern IMPLEMENTATION_COLOR_READ_FORMAT, pattern COMPILE_STATUS,
        pattern LOW_FLOAT, pattern MEDIUM_FLOAT, pattern HIGH_FLOAT,
        pattern LOW_INT, pattern MEDIUM_INT, pattern HIGH_INT,
        pattern FRAMEBUFFER, pattern RENDERBUFFER, pattern RGBA4,
        pattern RGB5_A1, pattern RGB565, pattern DEPTH_COMPONENT16,
        pattern STENCIL_INDEX, pattern STENCIL_INDEX8,
        pattern DEPTH_STENCIL, pattern RENDERBUFFER_WIDTH,
        pattern RENDERBUFFER_HEIGHT, pattern RENDERBUFFER_INTERNAL_FORMAT,
        pattern RENDERBUFFER_RED_SIZE, pattern RENDERBUFFER_GREEN_SIZE,
        pattern RENDERBUFFER_BLUE_SIZE, pattern RENDERBUFFER_ALPHA_SIZE,
        pattern RENDERBUFFER_DEPTH_SIZE, pattern RENDERBUFFER_STENCIL_SIZE,
        pattern FRAMEBUFFER_ATTACHMENT_OBJECT_TYPE,
        pattern FRAMEBUFFER_ATTACHMENT_OBJECT_NAME,
        pattern FRAMEBUFFER_ATTACHMENT_TEXTURE_LEVEL,
        pattern FRAMEBUFFER_ATTACHMENT_TEXTURE_CUBE_MAP_FACE,
        pattern COLOR_ATTACHMENT0, pattern DEPTH_ATTACHMENT,
        pattern STENCIL_ATTACHMENT, pattern DEPTH_STENCIL_ATTACHMENT,
        pattern NONE, pattern FRAMEBUFFER_COMPLETE,
        pattern FRAMEBUFFER_INCOMPLETE_ATTACHMENT,
        pattern FRAMEBUFFER_INCOMPLETE_MISSING_ATTACHMENT,
        pattern FRAMEBUFFER_INCOMPLETE_DIMENSIONS,
        pattern FRAMEBUFFER_UNSUPPORTED, pattern FRAMEBUFFER_BINDING,
        pattern RENDERBUFFER_BINDING, pattern MAX_RENDERBUFFER_SIZE,
        pattern INVALID_FRAMEBUFFER_OPERATION, pattern UNPACK_FLIP_Y_WEBGL,
        pattern UNPACK_PREMULTIPLY_ALPHA_WEBGL, pattern CONTEXT_LOST_WEBGL,
        pattern UNPACK_COLORSPACE_CONVERSION_WEBGL,
        pattern BROWSER_DEFAULT_WEBGL, getCanvas, getDrawingBufferWidth,
        getDrawingBufferHeight, WebGLRenderingContextBase(..),
        gTypeWebGLRenderingContextBase, IsWebGLRenderingContextBase,
        toWebGLRenderingContextBase)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, realToFrac, fmap, Show, Read, Eq, Ord, Maybe(..))
import qualified Prelude (error)
import Data.Typeable (Typeable)
import Data.Traversable (mapM)
import Language.Javascript.JSaddle (JSM(..), JSVal(..), JSString, strictEqual, toJSVal, valToStr, valToNumber, valToBool, js, jss, jsf, jsg, function, asyncFunction, new, array, jsUndefined, (!), (!!))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import JSDOM.Types
import Control.Applicative ((<$>))
import Control.Monad (void)
import Control.Lens.Operators ((^.))
import JSDOM.EventTargetClosures (EventName, unsafeEventName, unsafeEventNameAsync)
import JSDOM.Enums

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContextBase.activeTexture Mozilla WebGLRenderingContextBase.activeTexture documentation> 
activeTexture ::
              (MonadDOM m, IsWebGLRenderingContextBase self) =>
                self -> GLenum -> m ()
activeTexture self texture
  = liftDOM
      (void
         ((toWebGLRenderingContextBase self) ^. jsf "activeTexture"
            [toJSVal texture]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContextBase.attachShader Mozilla WebGLRenderingContextBase.attachShader documentation> 
attachShader ::
             (MonadDOM m, IsWebGLRenderingContextBase self) =>
               self -> Maybe WebGLProgram -> Maybe WebGLShader -> m ()
attachShader self program shader
  = liftDOM
      (void
         ((toWebGLRenderingContextBase self) ^. jsf "attachShader"
            [toJSVal program, toJSVal shader]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContextBase.bindAttribLocation Mozilla WebGLRenderingContextBase.bindAttribLocation documentation> 
bindAttribLocation ::
                   (MonadDOM m, IsWebGLRenderingContextBase self, ToJSString name) =>
                     self -> Maybe WebGLProgram -> GLuint -> name -> m ()
bindAttribLocation self program index name
  = liftDOM
      (void
         ((toWebGLRenderingContextBase self) ^. jsf "bindAttribLocation"
            [toJSVal program, toJSVal index, toJSVal name]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContextBase.bindBuffer Mozilla WebGLRenderingContextBase.bindBuffer documentation> 
bindBuffer ::
           (MonadDOM m, IsWebGLRenderingContextBase self) =>
             self -> GLenum -> Maybe WebGLBuffer -> m ()
bindBuffer self target buffer
  = liftDOM
      (void
         ((toWebGLRenderingContextBase self) ^. jsf "bindBuffer"
            [toJSVal target, toJSVal buffer]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContextBase.bindFramebuffer Mozilla WebGLRenderingContextBase.bindFramebuffer documentation> 
bindFramebuffer ::
                (MonadDOM m, IsWebGLRenderingContextBase self) =>
                  self -> GLenum -> Maybe WebGLFramebuffer -> m ()
bindFramebuffer self target framebuffer
  = liftDOM
      (void
         ((toWebGLRenderingContextBase self) ^. jsf "bindFramebuffer"
            [toJSVal target, toJSVal framebuffer]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContextBase.bindRenderbuffer Mozilla WebGLRenderingContextBase.bindRenderbuffer documentation> 
bindRenderbuffer ::
                 (MonadDOM m, IsWebGLRenderingContextBase self) =>
                   self -> GLenum -> Maybe WebGLRenderbuffer -> m ()
bindRenderbuffer self target renderbuffer
  = liftDOM
      (void
         ((toWebGLRenderingContextBase self) ^. jsf "bindRenderbuffer"
            [toJSVal target, toJSVal renderbuffer]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContextBase.bindTexture Mozilla WebGLRenderingContextBase.bindTexture documentation> 
bindTexture ::
            (MonadDOM m, IsWebGLRenderingContextBase self) =>
              self -> GLenum -> Maybe WebGLTexture -> m ()
bindTexture self target texture
  = liftDOM
      (void
         ((toWebGLRenderingContextBase self) ^. jsf "bindTexture"
            [toJSVal target, toJSVal texture]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContextBase.blendColor Mozilla WebGLRenderingContextBase.blendColor documentation> 
blendColor ::
           (MonadDOM m, IsWebGLRenderingContextBase self) =>
             self -> GLclampf -> GLclampf -> GLclampf -> GLclampf -> m ()
blendColor self red green blue alpha
  = liftDOM
      (void
         ((toWebGLRenderingContextBase self) ^. jsf "blendColor"
            [toJSVal red, toJSVal green, toJSVal blue, toJSVal alpha]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContextBase.blendEquation Mozilla WebGLRenderingContextBase.blendEquation documentation> 
blendEquation ::
              (MonadDOM m, IsWebGLRenderingContextBase self) =>
                self -> GLenum -> m ()
blendEquation self mode
  = liftDOM
      (void
         ((toWebGLRenderingContextBase self) ^. jsf "blendEquation"
            [toJSVal mode]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContextBase.blendEquationSeparate Mozilla WebGLRenderingContextBase.blendEquationSeparate documentation> 
blendEquationSeparate ::
                      (MonadDOM m, IsWebGLRenderingContextBase self) =>
                        self -> GLenum -> GLenum -> m ()
blendEquationSeparate self modeRGB modeAlpha
  = liftDOM
      (void
         ((toWebGLRenderingContextBase self) ^. jsf "blendEquationSeparate"
            [toJSVal modeRGB, toJSVal modeAlpha]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContextBase.blendFunc Mozilla WebGLRenderingContextBase.blendFunc documentation> 
blendFunc ::
          (MonadDOM m, IsWebGLRenderingContextBase self) =>
            self -> GLenum -> GLenum -> m ()
blendFunc self sfactor dfactor
  = liftDOM
      (void
         ((toWebGLRenderingContextBase self) ^. jsf "blendFunc"
            [toJSVal sfactor, toJSVal dfactor]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContextBase.blendFuncSeparate Mozilla WebGLRenderingContextBase.blendFuncSeparate documentation> 
blendFuncSeparate ::
                  (MonadDOM m, IsWebGLRenderingContextBase self) =>
                    self -> GLenum -> GLenum -> GLenum -> GLenum -> m ()
blendFuncSeparate self srcRGB dstRGB srcAlpha dstAlpha
  = liftDOM
      (void
         ((toWebGLRenderingContextBase self) ^. jsf "blendFuncSeparate"
            [toJSVal srcRGB, toJSVal dstRGB, toJSVal srcAlpha,
             toJSVal dstAlpha]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContextBase.bufferData Mozilla WebGLRenderingContextBase.bufferData documentation> 
bufferData ::
           (MonadDOM m, IsWebGLRenderingContextBase self,
            IsBufferDataSource data') =>
             self -> GLenum -> Maybe data' -> GLenum -> m ()
bufferData self target data' usage
  = liftDOM
      (void
         ((toWebGLRenderingContextBase self) ^. jsf "bufferData"
            [toJSVal target, toJSVal data', toJSVal usage]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContextBase.bufferData Mozilla WebGLRenderingContextBase.bufferData documentation> 
bufferDataPtr ::
              (MonadDOM m, IsWebGLRenderingContextBase self) =>
                self -> GLenum -> GLsizeiptr -> GLenum -> m ()
bufferDataPtr self target size usage
  = liftDOM
      (void
         ((toWebGLRenderingContextBase self) ^. jsf "bufferData"
            [toJSVal target, integralToDoubleToJSVal size, toJSVal usage]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContextBase.bufferSubData Mozilla WebGLRenderingContextBase.bufferSubData documentation> 
bufferSubData ::
              (MonadDOM m, IsWebGLRenderingContextBase self,
               IsBufferDataSource data') =>
                self -> GLenum -> GLintptr -> Maybe data' -> m ()
bufferSubData self target offset data'
  = liftDOM
      (void
         ((toWebGLRenderingContextBase self) ^. jsf "bufferSubData"
            [toJSVal target, integralToDoubleToJSVal offset, toJSVal data']))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContextBase.checkFramebufferStatus Mozilla WebGLRenderingContextBase.checkFramebufferStatus documentation> 
checkFramebufferStatus ::
                       (MonadDOM m, IsWebGLRenderingContextBase self) =>
                         self -> GLenum -> m GLenum
checkFramebufferStatus self target
  = liftDOM
      (((toWebGLRenderingContextBase self) ^.
          jsf "checkFramebufferStatus"
          [toJSVal target])
         >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContextBase.checkFramebufferStatus Mozilla WebGLRenderingContextBase.checkFramebufferStatus documentation> 
checkFramebufferStatus_ ::
                        (MonadDOM m, IsWebGLRenderingContextBase self) =>
                          self -> GLenum -> m ()
checkFramebufferStatus_ self target
  = liftDOM
      (void
         ((toWebGLRenderingContextBase self) ^. jsf "checkFramebufferStatus"
            [toJSVal target]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContextBase.clear Mozilla WebGLRenderingContextBase.clear documentation> 
clear ::
      (MonadDOM m, IsWebGLRenderingContextBase self) =>
        self -> GLbitfield -> m ()
clear self mask
  = liftDOM
      (void
         ((toWebGLRenderingContextBase self) ^. jsf "clear" [toJSVal mask]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContextBase.clearColor Mozilla WebGLRenderingContextBase.clearColor documentation> 
clearColor ::
           (MonadDOM m, IsWebGLRenderingContextBase self) =>
             self -> GLclampf -> GLclampf -> GLclampf -> GLclampf -> m ()
clearColor self red green blue alpha
  = liftDOM
      (void
         ((toWebGLRenderingContextBase self) ^. jsf "clearColor"
            [toJSVal red, toJSVal green, toJSVal blue, toJSVal alpha]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContextBase.clearDepth Mozilla WebGLRenderingContextBase.clearDepth documentation> 
clearDepth ::
           (MonadDOM m, IsWebGLRenderingContextBase self) =>
             self -> GLclampf -> m ()
clearDepth self depth
  = liftDOM
      (void
         ((toWebGLRenderingContextBase self) ^. jsf "clearDepth"
            [toJSVal depth]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContextBase.clearStencil Mozilla WebGLRenderingContextBase.clearStencil documentation> 
clearStencil ::
             (MonadDOM m, IsWebGLRenderingContextBase self) =>
               self -> GLint -> m ()
clearStencil self s
  = liftDOM
      (void
         ((toWebGLRenderingContextBase self) ^. jsf "clearStencil"
            [toJSVal s]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContextBase.colorMask Mozilla WebGLRenderingContextBase.colorMask documentation> 
colorMask ::
          (MonadDOM m, IsWebGLRenderingContextBase self) =>
            self -> GLboolean -> GLboolean -> GLboolean -> GLboolean -> m ()
colorMask self red green blue alpha
  = liftDOM
      (void
         ((toWebGLRenderingContextBase self) ^. jsf "colorMask"
            [toJSVal red, toJSVal green, toJSVal blue, toJSVal alpha]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContextBase.compileShader Mozilla WebGLRenderingContextBase.compileShader documentation> 
compileShader ::
              (MonadDOM m, IsWebGLRenderingContextBase self) =>
                self -> Maybe WebGLShader -> m ()
compileShader self shader
  = liftDOM
      (void
         ((toWebGLRenderingContextBase self) ^. jsf "compileShader"
            [toJSVal shader]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContextBase.compressedTexImage2D Mozilla WebGLRenderingContextBase.compressedTexImage2D documentation> 
compressedTexImage2D ::
                     (MonadDOM m, IsWebGLRenderingContextBase self,
                      IsArrayBufferView data') =>
                       self ->
                         GLenum ->
                           GLint -> GLenum -> GLsizei -> GLsizei -> GLint -> data' -> m ()
compressedTexImage2D self target level internalformat width height
  border data'
  = liftDOM
      (void
         ((toWebGLRenderingContextBase self) ^. jsf "compressedTexImage2D"
            [toJSVal target, toJSVal level, toJSVal internalformat,
             toJSVal width, toJSVal height, toJSVal border, toJSVal data']))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContextBase.compressedTexSubImage2D Mozilla WebGLRenderingContextBase.compressedTexSubImage2D documentation> 
compressedTexSubImage2D ::
                        (MonadDOM m, IsWebGLRenderingContextBase self,
                         IsArrayBufferView data') =>
                          self ->
                            GLenum ->
                              GLint ->
                                GLint -> GLint -> GLsizei -> GLsizei -> GLenum -> data' -> m ()
compressedTexSubImage2D self target level xoffset yoffset width
  height format data'
  = liftDOM
      (void
         ((toWebGLRenderingContextBase self) ^.
            jsf "compressedTexSubImage2D"
            [toJSVal target, toJSVal level, toJSVal xoffset, toJSVal yoffset,
             toJSVal width, toJSVal height, toJSVal format, toJSVal data']))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContextBase.copyTexImage2D Mozilla WebGLRenderingContextBase.copyTexImage2D documentation> 
copyTexImage2D ::
               (MonadDOM m, IsWebGLRenderingContextBase self) =>
                 self ->
                   GLenum ->
                     GLint ->
                       GLenum -> GLint -> GLint -> GLsizei -> GLsizei -> GLint -> m ()
copyTexImage2D self target level internalformat x y width height
  border
  = liftDOM
      (void
         ((toWebGLRenderingContextBase self) ^. jsf "copyTexImage2D"
            [toJSVal target, toJSVal level, toJSVal internalformat, toJSVal x,
             toJSVal y, toJSVal width, toJSVal height, toJSVal border]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContextBase.copyTexSubImage2D Mozilla WebGLRenderingContextBase.copyTexSubImage2D documentation> 
copyTexSubImage2D ::
                  (MonadDOM m, IsWebGLRenderingContextBase self) =>
                    self ->
                      GLenum ->
                        GLint ->
                          GLint -> GLint -> GLint -> GLint -> GLsizei -> GLsizei -> m ()
copyTexSubImage2D self target level xoffset yoffset x y width
  height
  = liftDOM
      (void
         ((toWebGLRenderingContextBase self) ^. jsf "copyTexSubImage2D"
            [toJSVal target, toJSVal level, toJSVal xoffset, toJSVal yoffset,
             toJSVal x, toJSVal y, toJSVal width, toJSVal height]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContextBase.createBuffer Mozilla WebGLRenderingContextBase.createBuffer documentation> 
createBuffer ::
             (MonadDOM m, IsWebGLRenderingContextBase self) =>
               self -> m WebGLBuffer
createBuffer self
  = liftDOM
      (((toWebGLRenderingContextBase self) ^. jsf "createBuffer" ()) >>=
         fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContextBase.createBuffer Mozilla WebGLRenderingContextBase.createBuffer documentation> 
createBuffer_ ::
              (MonadDOM m, IsWebGLRenderingContextBase self) => self -> m ()
createBuffer_ self
  = liftDOM
      (void
         ((toWebGLRenderingContextBase self) ^. jsf "createBuffer" ()))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContextBase.createFramebuffer Mozilla WebGLRenderingContextBase.createFramebuffer documentation> 
createFramebuffer ::
                  (MonadDOM m, IsWebGLRenderingContextBase self) =>
                    self -> m WebGLFramebuffer
createFramebuffer self
  = liftDOM
      (((toWebGLRenderingContextBase self) ^. jsf "createFramebuffer" ())
         >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContextBase.createFramebuffer Mozilla WebGLRenderingContextBase.createFramebuffer documentation> 
createFramebuffer_ ::
                   (MonadDOM m, IsWebGLRenderingContextBase self) => self -> m ()
createFramebuffer_ self
  = liftDOM
      (void
         ((toWebGLRenderingContextBase self) ^. jsf "createFramebuffer" ()))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContextBase.createProgram Mozilla WebGLRenderingContextBase.createProgram documentation> 
createProgram ::
              (MonadDOM m, IsWebGLRenderingContextBase self) =>
                self -> m WebGLProgram
createProgram self
  = liftDOM
      (((toWebGLRenderingContextBase self) ^. jsf "createProgram" ()) >>=
         fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContextBase.createProgram Mozilla WebGLRenderingContextBase.createProgram documentation> 
createProgram_ ::
               (MonadDOM m, IsWebGLRenderingContextBase self) => self -> m ()
createProgram_ self
  = liftDOM
      (void
         ((toWebGLRenderingContextBase self) ^. jsf "createProgram" ()))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContextBase.createRenderbuffer Mozilla WebGLRenderingContextBase.createRenderbuffer documentation> 
createRenderbuffer ::
                   (MonadDOM m, IsWebGLRenderingContextBase self) =>
                     self -> m WebGLRenderbuffer
createRenderbuffer self
  = liftDOM
      (((toWebGLRenderingContextBase self) ^. jsf "createRenderbuffer"
          ())
         >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContextBase.createRenderbuffer Mozilla WebGLRenderingContextBase.createRenderbuffer documentation> 
createRenderbuffer_ ::
                    (MonadDOM m, IsWebGLRenderingContextBase self) => self -> m ()
createRenderbuffer_ self
  = liftDOM
      (void
         ((toWebGLRenderingContextBase self) ^. jsf "createRenderbuffer"
            ()))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContextBase.createShader Mozilla WebGLRenderingContextBase.createShader documentation> 
createShader ::
             (MonadDOM m, IsWebGLRenderingContextBase self) =>
               self -> GLenum -> m WebGLShader
createShader self type'
  = liftDOM
      (((toWebGLRenderingContextBase self) ^. jsf "createShader"
          [toJSVal type'])
         >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContextBase.createShader Mozilla WebGLRenderingContextBase.createShader documentation> 
createShader_ ::
              (MonadDOM m, IsWebGLRenderingContextBase self) =>
                self -> GLenum -> m ()
createShader_ self type'
  = liftDOM
      (void
         ((toWebGLRenderingContextBase self) ^. jsf "createShader"
            [toJSVal type']))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContextBase.createTexture Mozilla WebGLRenderingContextBase.createTexture documentation> 
createTexture ::
              (MonadDOM m, IsWebGLRenderingContextBase self) =>
                self -> m WebGLTexture
createTexture self
  = liftDOM
      (((toWebGLRenderingContextBase self) ^. jsf "createTexture" ()) >>=
         fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContextBase.createTexture Mozilla WebGLRenderingContextBase.createTexture documentation> 
createTexture_ ::
               (MonadDOM m, IsWebGLRenderingContextBase self) => self -> m ()
createTexture_ self
  = liftDOM
      (void
         ((toWebGLRenderingContextBase self) ^. jsf "createTexture" ()))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContextBase.cullFace Mozilla WebGLRenderingContextBase.cullFace documentation> 
cullFace ::
         (MonadDOM m, IsWebGLRenderingContextBase self) =>
           self -> GLenum -> m ()
cullFace self mode
  = liftDOM
      (void
         ((toWebGLRenderingContextBase self) ^. jsf "cullFace"
            [toJSVal mode]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContextBase.deleteBuffer Mozilla WebGLRenderingContextBase.deleteBuffer documentation> 
deleteBuffer ::
             (MonadDOM m, IsWebGLRenderingContextBase self) =>
               self -> Maybe WebGLBuffer -> m ()
deleteBuffer self buffer
  = liftDOM
      (void
         ((toWebGLRenderingContextBase self) ^. jsf "deleteBuffer"
            [toJSVal buffer]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContextBase.deleteFramebuffer Mozilla WebGLRenderingContextBase.deleteFramebuffer documentation> 
deleteFramebuffer ::
                  (MonadDOM m, IsWebGLRenderingContextBase self) =>
                    self -> Maybe WebGLFramebuffer -> m ()
deleteFramebuffer self framebuffer
  = liftDOM
      (void
         ((toWebGLRenderingContextBase self) ^. jsf "deleteFramebuffer"
            [toJSVal framebuffer]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContextBase.deleteProgram Mozilla WebGLRenderingContextBase.deleteProgram documentation> 
deleteProgram ::
              (MonadDOM m, IsWebGLRenderingContextBase self) =>
                self -> Maybe WebGLProgram -> m ()
deleteProgram self program
  = liftDOM
      (void
         ((toWebGLRenderingContextBase self) ^. jsf "deleteProgram"
            [toJSVal program]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContextBase.deleteRenderbuffer Mozilla WebGLRenderingContextBase.deleteRenderbuffer documentation> 
deleteRenderbuffer ::
                   (MonadDOM m, IsWebGLRenderingContextBase self) =>
                     self -> Maybe WebGLRenderbuffer -> m ()
deleteRenderbuffer self renderbuffer
  = liftDOM
      (void
         ((toWebGLRenderingContextBase self) ^. jsf "deleteRenderbuffer"
            [toJSVal renderbuffer]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContextBase.deleteShader Mozilla WebGLRenderingContextBase.deleteShader documentation> 
deleteShader ::
             (MonadDOM m, IsWebGLRenderingContextBase self) =>
               self -> Maybe WebGLShader -> m ()
deleteShader self shader
  = liftDOM
      (void
         ((toWebGLRenderingContextBase self) ^. jsf "deleteShader"
            [toJSVal shader]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContextBase.deleteTexture Mozilla WebGLRenderingContextBase.deleteTexture documentation> 
deleteTexture ::
              (MonadDOM m, IsWebGLRenderingContextBase self) =>
                self -> Maybe WebGLTexture -> m ()
deleteTexture self texture
  = liftDOM
      (void
         ((toWebGLRenderingContextBase self) ^. jsf "deleteTexture"
            [toJSVal texture]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContextBase.depthFunc Mozilla WebGLRenderingContextBase.depthFunc documentation> 
depthFunc ::
          (MonadDOM m, IsWebGLRenderingContextBase self) =>
            self -> GLenum -> m ()
depthFunc self func
  = liftDOM
      (void
         ((toWebGLRenderingContextBase self) ^. jsf "depthFunc"
            [toJSVal func]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContextBase.depthMask Mozilla WebGLRenderingContextBase.depthMask documentation> 
depthMask ::
          (MonadDOM m, IsWebGLRenderingContextBase self) =>
            self -> GLboolean -> m ()
depthMask self flag
  = liftDOM
      (void
         ((toWebGLRenderingContextBase self) ^. jsf "depthMask"
            [toJSVal flag]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContextBase.depthRange Mozilla WebGLRenderingContextBase.depthRange documentation> 
depthRange ::
           (MonadDOM m, IsWebGLRenderingContextBase self) =>
             self -> GLclampf -> GLclampf -> m ()
depthRange self zNear zFar
  = liftDOM
      (void
         ((toWebGLRenderingContextBase self) ^. jsf "depthRange"
            [toJSVal zNear, toJSVal zFar]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContextBase.detachShader Mozilla WebGLRenderingContextBase.detachShader documentation> 
detachShader ::
             (MonadDOM m, IsWebGLRenderingContextBase self) =>
               self -> Maybe WebGLProgram -> Maybe WebGLShader -> m ()
detachShader self program shader
  = liftDOM
      (void
         ((toWebGLRenderingContextBase self) ^. jsf "detachShader"
            [toJSVal program, toJSVal shader]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContextBase.disable Mozilla WebGLRenderingContextBase.disable documentation> 
disable ::
        (MonadDOM m, IsWebGLRenderingContextBase self) =>
          self -> GLenum -> m ()
disable self cap
  = liftDOM
      (void
         ((toWebGLRenderingContextBase self) ^. jsf "disable"
            [toJSVal cap]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContextBase.disableVertexAttribArray Mozilla WebGLRenderingContextBase.disableVertexAttribArray documentation> 
disableVertexAttribArray ::
                         (MonadDOM m, IsWebGLRenderingContextBase self) =>
                           self -> GLuint -> m ()
disableVertexAttribArray self index
  = liftDOM
      (void
         ((toWebGLRenderingContextBase self) ^.
            jsf "disableVertexAttribArray"
            [toJSVal index]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContextBase.drawArrays Mozilla WebGLRenderingContextBase.drawArrays documentation> 
drawArrays ::
           (MonadDOM m, IsWebGLRenderingContextBase self) =>
             self -> GLenum -> GLint -> GLsizei -> m ()
drawArrays self mode first count
  = liftDOM
      (void
         ((toWebGLRenderingContextBase self) ^. jsf "drawArrays"
            [toJSVal mode, toJSVal first, toJSVal count]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContextBase.drawElements Mozilla WebGLRenderingContextBase.drawElements documentation> 
drawElements ::
             (MonadDOM m, IsWebGLRenderingContextBase self) =>
               self -> GLenum -> GLsizei -> GLenum -> GLintptr -> m ()
drawElements self mode count type' offset
  = liftDOM
      (void
         ((toWebGLRenderingContextBase self) ^. jsf "drawElements"
            [toJSVal mode, toJSVal count, toJSVal type',
             integralToDoubleToJSVal offset]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContextBase.enable Mozilla WebGLRenderingContextBase.enable documentation> 
enable ::
       (MonadDOM m, IsWebGLRenderingContextBase self) =>
         self -> GLenum -> m ()
enable self cap
  = liftDOM
      (void
         ((toWebGLRenderingContextBase self) ^. jsf "enable" [toJSVal cap]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContextBase.enableVertexAttribArray Mozilla WebGLRenderingContextBase.enableVertexAttribArray documentation> 
enableVertexAttribArray ::
                        (MonadDOM m, IsWebGLRenderingContextBase self) =>
                          self -> GLuint -> m ()
enableVertexAttribArray self index
  = liftDOM
      (void
         ((toWebGLRenderingContextBase self) ^.
            jsf "enableVertexAttribArray"
            [toJSVal index]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContextBase.finish Mozilla WebGLRenderingContextBase.finish documentation> 
finish ::
       (MonadDOM m, IsWebGLRenderingContextBase self) => self -> m ()
finish self
  = liftDOM
      (void ((toWebGLRenderingContextBase self) ^. jsf "finish" ()))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContextBase.flush Mozilla WebGLRenderingContextBase.flush documentation> 
flush ::
      (MonadDOM m, IsWebGLRenderingContextBase self) => self -> m ()
flush self
  = liftDOM
      (void ((toWebGLRenderingContextBase self) ^. jsf "flush" ()))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContextBase.framebufferRenderbuffer Mozilla WebGLRenderingContextBase.framebufferRenderbuffer documentation> 
framebufferRenderbuffer ::
                        (MonadDOM m, IsWebGLRenderingContextBase self) =>
                          self ->
                            GLenum -> GLenum -> GLenum -> Maybe WebGLRenderbuffer -> m ()
framebufferRenderbuffer self target attachment renderbuffertarget
  renderbuffer
  = liftDOM
      (void
         ((toWebGLRenderingContextBase self) ^.
            jsf "framebufferRenderbuffer"
            [toJSVal target, toJSVal attachment, toJSVal renderbuffertarget,
             toJSVal renderbuffer]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContextBase.framebufferTexture2D Mozilla WebGLRenderingContextBase.framebufferTexture2D documentation> 
framebufferTexture2D ::
                     (MonadDOM m, IsWebGLRenderingContextBase self) =>
                       self ->
                         GLenum -> GLenum -> GLenum -> Maybe WebGLTexture -> GLint -> m ()
framebufferTexture2D self target attachment textarget texture level
  = liftDOM
      (void
         ((toWebGLRenderingContextBase self) ^. jsf "framebufferTexture2D"
            [toJSVal target, toJSVal attachment, toJSVal textarget,
             toJSVal texture, toJSVal level]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContextBase.frontFace Mozilla WebGLRenderingContextBase.frontFace documentation> 
frontFace ::
          (MonadDOM m, IsWebGLRenderingContextBase self) =>
            self -> GLenum -> m ()
frontFace self mode
  = liftDOM
      (void
         ((toWebGLRenderingContextBase self) ^. jsf "frontFace"
            [toJSVal mode]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContextBase.generateMipmap Mozilla WebGLRenderingContextBase.generateMipmap documentation> 
generateMipmap ::
               (MonadDOM m, IsWebGLRenderingContextBase self) =>
                 self -> GLenum -> m ()
generateMipmap self target
  = liftDOM
      (void
         ((toWebGLRenderingContextBase self) ^. jsf "generateMipmap"
            [toJSVal target]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContextBase.getActiveAttrib Mozilla WebGLRenderingContextBase.getActiveAttrib documentation> 
getActiveAttrib ::
                (MonadDOM m, IsWebGLRenderingContextBase self) =>
                  self -> Maybe WebGLProgram -> GLuint -> m WebGLActiveInfo
getActiveAttrib self program index
  = liftDOM
      (((toWebGLRenderingContextBase self) ^. jsf "getActiveAttrib"
          [toJSVal program, toJSVal index])
         >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContextBase.getActiveAttrib Mozilla WebGLRenderingContextBase.getActiveAttrib documentation> 
getActiveAttrib_ ::
                 (MonadDOM m, IsWebGLRenderingContextBase self) =>
                   self -> Maybe WebGLProgram -> GLuint -> m ()
getActiveAttrib_ self program index
  = liftDOM
      (void
         ((toWebGLRenderingContextBase self) ^. jsf "getActiveAttrib"
            [toJSVal program, toJSVal index]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContextBase.getActiveUniform Mozilla WebGLRenderingContextBase.getActiveUniform documentation> 
getActiveUniform ::
                 (MonadDOM m, IsWebGLRenderingContextBase self) =>
                   self -> Maybe WebGLProgram -> GLuint -> m WebGLActiveInfo
getActiveUniform self program index
  = liftDOM
      (((toWebGLRenderingContextBase self) ^. jsf "getActiveUniform"
          [toJSVal program, toJSVal index])
         >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContextBase.getActiveUniform Mozilla WebGLRenderingContextBase.getActiveUniform documentation> 
getActiveUniform_ ::
                  (MonadDOM m, IsWebGLRenderingContextBase self) =>
                    self -> Maybe WebGLProgram -> GLuint -> m ()
getActiveUniform_ self program index
  = liftDOM
      (void
         ((toWebGLRenderingContextBase self) ^. jsf "getActiveUniform"
            [toJSVal program, toJSVal index]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContextBase.getAttachedShaders Mozilla WebGLRenderingContextBase.getAttachedShaders documentation> 
getAttachedShaders ::
                   (MonadDOM m, IsWebGLRenderingContextBase self) =>
                     self -> Maybe WebGLProgram -> m (Maybe [WebGLShader])
getAttachedShaders self program
  = liftDOM
      (((toWebGLRenderingContextBase self) ^. jsf "getAttachedShaders"
          [toJSVal program])
         >>= maybeNullOrUndefined' fromJSArrayUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContextBase.getAttachedShaders Mozilla WebGLRenderingContextBase.getAttachedShaders documentation> 
getAttachedShaders_ ::
                    (MonadDOM m, IsWebGLRenderingContextBase self) =>
                      self -> Maybe WebGLProgram -> m ()
getAttachedShaders_ self program
  = liftDOM
      (void
         ((toWebGLRenderingContextBase self) ^. jsf "getAttachedShaders"
            [toJSVal program]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContextBase.getAttribLocation Mozilla WebGLRenderingContextBase.getAttribLocation documentation> 
getAttribLocation ::
                  (MonadDOM m, IsWebGLRenderingContextBase self, ToJSString name) =>
                    self -> Maybe WebGLProgram -> name -> m GLint
getAttribLocation self program name
  = liftDOM
      (((toWebGLRenderingContextBase self) ^. jsf "getAttribLocation"
          [toJSVal program, toJSVal name])
         >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContextBase.getAttribLocation Mozilla WebGLRenderingContextBase.getAttribLocation documentation> 
getAttribLocation_ ::
                   (MonadDOM m, IsWebGLRenderingContextBase self, ToJSString name) =>
                     self -> Maybe WebGLProgram -> name -> m ()
getAttribLocation_ self program name
  = liftDOM
      (void
         ((toWebGLRenderingContextBase self) ^. jsf "getAttribLocation"
            [toJSVal program, toJSVal name]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContextBase.getBufferParameter Mozilla WebGLRenderingContextBase.getBufferParameter documentation> 
getBufferParameter ::
                   (MonadDOM m, IsWebGLRenderingContextBase self) =>
                     self -> GLenum -> GLenum -> m JSVal
getBufferParameter self target pname
  = liftDOM
      (((toWebGLRenderingContextBase self) ^. jsf "getBufferParameter"
          [toJSVal target, toJSVal pname])
         >>= toJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContextBase.getBufferParameter Mozilla WebGLRenderingContextBase.getBufferParameter documentation> 
getBufferParameter_ ::
                    (MonadDOM m, IsWebGLRenderingContextBase self) =>
                      self -> GLenum -> GLenum -> m ()
getBufferParameter_ self target pname
  = liftDOM
      (void
         ((toWebGLRenderingContextBase self) ^. jsf "getBufferParameter"
            [toJSVal target, toJSVal pname]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContextBase.getContextAttributes Mozilla WebGLRenderingContextBase.getContextAttributes documentation> 
getContextAttributes ::
                     (MonadDOM m, IsWebGLRenderingContextBase self) =>
                       self -> m (Maybe WebGLContextAttributes)
getContextAttributes self
  = liftDOM
      (((toWebGLRenderingContextBase self) ^. jsf "getContextAttributes"
          ())
         >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContextBase.getContextAttributes Mozilla WebGLRenderingContextBase.getContextAttributes documentation> 
getContextAttributes_ ::
                      (MonadDOM m, IsWebGLRenderingContextBase self) => self -> m ()
getContextAttributes_ self
  = liftDOM
      (void
         ((toWebGLRenderingContextBase self) ^. jsf "getContextAttributes"
            ()))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContextBase.getContextAttributes Mozilla WebGLRenderingContextBase.getContextAttributes documentation> 
getContextAttributesUnsafe ::
                           (MonadDOM m, IsWebGLRenderingContextBase self, HasCallStack) =>
                             self -> m WebGLContextAttributes
getContextAttributesUnsafe self
  = liftDOM
      ((((toWebGLRenderingContextBase self) ^. jsf "getContextAttributes"
           ())
          >>= fromJSVal)
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContextBase.getContextAttributes Mozilla WebGLRenderingContextBase.getContextAttributes documentation> 
getContextAttributesUnchecked ::
                              (MonadDOM m, IsWebGLRenderingContextBase self) =>
                                self -> m WebGLContextAttributes
getContextAttributesUnchecked self
  = liftDOM
      (((toWebGLRenderingContextBase self) ^. jsf "getContextAttributes"
          ())
         >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContextBase.getError Mozilla WebGLRenderingContextBase.getError documentation> 
getError ::
         (MonadDOM m, IsWebGLRenderingContextBase self) => self -> m GLenum
getError self
  = liftDOM
      (((toWebGLRenderingContextBase self) ^. jsf "getError" ()) >>=
         fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContextBase.getError Mozilla WebGLRenderingContextBase.getError documentation> 
getError_ ::
          (MonadDOM m, IsWebGLRenderingContextBase self) => self -> m ()
getError_ self
  = liftDOM
      (void ((toWebGLRenderingContextBase self) ^. jsf "getError" ()))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContextBase.getSupportedExtensions Mozilla WebGLRenderingContextBase.getSupportedExtensions documentation> 
getSupportedExtensions ::
                       (MonadDOM m, IsWebGLRenderingContextBase self,
                        FromJSString result) =>
                         self -> m (Maybe [result])
getSupportedExtensions self
  = liftDOM
      (((toWebGLRenderingContextBase self) ^.
          jsf "getSupportedExtensions"
          ())
         >>= maybeNullOrUndefined' fromJSArrayUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContextBase.getSupportedExtensions Mozilla WebGLRenderingContextBase.getSupportedExtensions documentation> 
getSupportedExtensions_ ::
                        (MonadDOM m, IsWebGLRenderingContextBase self) => self -> m ()
getSupportedExtensions_ self
  = liftDOM
      (void
         ((toWebGLRenderingContextBase self) ^. jsf "getSupportedExtensions"
            ()))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContextBase.getExtension Mozilla WebGLRenderingContextBase.getExtension documentation> 
getExtension ::
             (MonadDOM m, IsWebGLRenderingContextBase self, ToJSString name) =>
               self -> name -> m (Maybe GObject)
getExtension self name
  = liftDOM
      (((toWebGLRenderingContextBase self) ^. jsf "getExtension"
          [toJSVal name])
         >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContextBase.getExtension Mozilla WebGLRenderingContextBase.getExtension documentation> 
getExtension_ ::
              (MonadDOM m, IsWebGLRenderingContextBase self, ToJSString name) =>
                self -> name -> m ()
getExtension_ self name
  = liftDOM
      (void
         ((toWebGLRenderingContextBase self) ^. jsf "getExtension"
            [toJSVal name]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContextBase.getExtension Mozilla WebGLRenderingContextBase.getExtension documentation> 
getExtensionUnsafe ::
                   (MonadDOM m, IsWebGLRenderingContextBase self, ToJSString name,
                    HasCallStack) =>
                     self -> name -> m GObject
getExtensionUnsafe self name
  = liftDOM
      ((((toWebGLRenderingContextBase self) ^. jsf "getExtension"
           [toJSVal name])
          >>= fromJSVal)
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContextBase.getExtension Mozilla WebGLRenderingContextBase.getExtension documentation> 
getExtensionUnchecked ::
                      (MonadDOM m, IsWebGLRenderingContextBase self, ToJSString name) =>
                        self -> name -> m GObject
getExtensionUnchecked self name
  = liftDOM
      (((toWebGLRenderingContextBase self) ^. jsf "getExtension"
          [toJSVal name])
         >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContextBase.getFramebufferAttachmentParameter Mozilla WebGLRenderingContextBase.getFramebufferAttachmentParameter documentation> 
getFramebufferAttachmentParameter ::
                                  (MonadDOM m, IsWebGLRenderingContextBase self) =>
                                    self -> GLenum -> GLenum -> GLenum -> m JSVal
getFramebufferAttachmentParameter self target attachment pname
  = liftDOM
      (((toWebGLRenderingContextBase self) ^.
          jsf "getFramebufferAttachmentParameter"
          [toJSVal target, toJSVal attachment, toJSVal pname])
         >>= toJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContextBase.getFramebufferAttachmentParameter Mozilla WebGLRenderingContextBase.getFramebufferAttachmentParameter documentation> 
getFramebufferAttachmentParameter_ ::
                                   (MonadDOM m, IsWebGLRenderingContextBase self) =>
                                     self -> GLenum -> GLenum -> GLenum -> m ()
getFramebufferAttachmentParameter_ self target attachment pname
  = liftDOM
      (void
         ((toWebGLRenderingContextBase self) ^.
            jsf "getFramebufferAttachmentParameter"
            [toJSVal target, toJSVal attachment, toJSVal pname]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContextBase.getParameter Mozilla WebGLRenderingContextBase.getParameter documentation> 
getParameter ::
             (MonadDOM m, IsWebGLRenderingContextBase self) =>
               self -> GLenum -> m JSVal
getParameter self pname
  = liftDOM
      (((toWebGLRenderingContextBase self) ^. jsf "getParameter"
          [toJSVal pname])
         >>= toJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContextBase.getParameter Mozilla WebGLRenderingContextBase.getParameter documentation> 
getParameter_ ::
              (MonadDOM m, IsWebGLRenderingContextBase self) =>
                self -> GLenum -> m ()
getParameter_ self pname
  = liftDOM
      (void
         ((toWebGLRenderingContextBase self) ^. jsf "getParameter"
            [toJSVal pname]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContextBase.getProgramParameter Mozilla WebGLRenderingContextBase.getProgramParameter documentation> 
getProgramParameter ::
                    (MonadDOM m, IsWebGLRenderingContextBase self) =>
                      self -> Maybe WebGLProgram -> GLenum -> m JSVal
getProgramParameter self program pname
  = liftDOM
      (((toWebGLRenderingContextBase self) ^. jsf "getProgramParameter"
          [toJSVal program, toJSVal pname])
         >>= toJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContextBase.getProgramParameter Mozilla WebGLRenderingContextBase.getProgramParameter documentation> 
getProgramParameter_ ::
                     (MonadDOM m, IsWebGLRenderingContextBase self) =>
                       self -> Maybe WebGLProgram -> GLenum -> m ()
getProgramParameter_ self program pname
  = liftDOM
      (void
         ((toWebGLRenderingContextBase self) ^. jsf "getProgramParameter"
            [toJSVal program, toJSVal pname]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContextBase.getProgramInfoLog Mozilla WebGLRenderingContextBase.getProgramInfoLog documentation> 
getProgramInfoLog ::
                  (MonadDOM m, IsWebGLRenderingContextBase self,
                   FromJSString result) =>
                    self -> Maybe WebGLProgram -> m (Maybe result)
getProgramInfoLog self program
  = liftDOM
      (((toWebGLRenderingContextBase self) ^. jsf "getProgramInfoLog"
          [toJSVal program])
         >>= fromMaybeJSString)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContextBase.getProgramInfoLog Mozilla WebGLRenderingContextBase.getProgramInfoLog documentation> 
getProgramInfoLog_ ::
                   (MonadDOM m, IsWebGLRenderingContextBase self) =>
                     self -> Maybe WebGLProgram -> m ()
getProgramInfoLog_ self program
  = liftDOM
      (void
         ((toWebGLRenderingContextBase self) ^. jsf "getProgramInfoLog"
            [toJSVal program]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContextBase.getProgramInfoLog Mozilla WebGLRenderingContextBase.getProgramInfoLog documentation> 
getProgramInfoLogUnsafe ::
                        (MonadDOM m, IsWebGLRenderingContextBase self, HasCallStack,
                         FromJSString result) =>
                          self -> Maybe WebGLProgram -> m result
getProgramInfoLogUnsafe self program
  = liftDOM
      ((((toWebGLRenderingContextBase self) ^. jsf "getProgramInfoLog"
           [toJSVal program])
          >>= fromMaybeJSString)
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContextBase.getProgramInfoLog Mozilla WebGLRenderingContextBase.getProgramInfoLog documentation> 
getProgramInfoLogUnchecked ::
                           (MonadDOM m, IsWebGLRenderingContextBase self,
                            FromJSString result) =>
                             self -> Maybe WebGLProgram -> m result
getProgramInfoLogUnchecked self program
  = liftDOM
      (((toWebGLRenderingContextBase self) ^. jsf "getProgramInfoLog"
          [toJSVal program])
         >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContextBase.getRenderbufferParameter Mozilla WebGLRenderingContextBase.getRenderbufferParameter documentation> 
getRenderbufferParameter ::
                         (MonadDOM m, IsWebGLRenderingContextBase self) =>
                           self -> GLenum -> GLenum -> m JSVal
getRenderbufferParameter self target pname
  = liftDOM
      (((toWebGLRenderingContextBase self) ^.
          jsf "getRenderbufferParameter"
          [toJSVal target, toJSVal pname])
         >>= toJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContextBase.getRenderbufferParameter Mozilla WebGLRenderingContextBase.getRenderbufferParameter documentation> 
getRenderbufferParameter_ ::
                          (MonadDOM m, IsWebGLRenderingContextBase self) =>
                            self -> GLenum -> GLenum -> m ()
getRenderbufferParameter_ self target pname
  = liftDOM
      (void
         ((toWebGLRenderingContextBase self) ^.
            jsf "getRenderbufferParameter"
            [toJSVal target, toJSVal pname]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContextBase.getShaderParameter Mozilla WebGLRenderingContextBase.getShaderParameter documentation> 
getShaderParameter ::
                   (MonadDOM m, IsWebGLRenderingContextBase self) =>
                     self -> Maybe WebGLShader -> GLenum -> m JSVal
getShaderParameter self shader pname
  = liftDOM
      (((toWebGLRenderingContextBase self) ^. jsf "getShaderParameter"
          [toJSVal shader, toJSVal pname])
         >>= toJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContextBase.getShaderParameter Mozilla WebGLRenderingContextBase.getShaderParameter documentation> 
getShaderParameter_ ::
                    (MonadDOM m, IsWebGLRenderingContextBase self) =>
                      self -> Maybe WebGLShader -> GLenum -> m ()
getShaderParameter_ self shader pname
  = liftDOM
      (void
         ((toWebGLRenderingContextBase self) ^. jsf "getShaderParameter"
            [toJSVal shader, toJSVal pname]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContextBase.getShaderInfoLog Mozilla WebGLRenderingContextBase.getShaderInfoLog documentation> 
getShaderInfoLog ::
                 (MonadDOM m, IsWebGLRenderingContextBase self,
                  FromJSString result) =>
                   self -> Maybe WebGLShader -> m (Maybe result)
getShaderInfoLog self shader
  = liftDOM
      (((toWebGLRenderingContextBase self) ^. jsf "getShaderInfoLog"
          [toJSVal shader])
         >>= fromMaybeJSString)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContextBase.getShaderInfoLog Mozilla WebGLRenderingContextBase.getShaderInfoLog documentation> 
getShaderInfoLog_ ::
                  (MonadDOM m, IsWebGLRenderingContextBase self) =>
                    self -> Maybe WebGLShader -> m ()
getShaderInfoLog_ self shader
  = liftDOM
      (void
         ((toWebGLRenderingContextBase self) ^. jsf "getShaderInfoLog"
            [toJSVal shader]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContextBase.getShaderInfoLog Mozilla WebGLRenderingContextBase.getShaderInfoLog documentation> 
getShaderInfoLogUnsafe ::
                       (MonadDOM m, IsWebGLRenderingContextBase self, HasCallStack,
                        FromJSString result) =>
                         self -> Maybe WebGLShader -> m result
getShaderInfoLogUnsafe self shader
  = liftDOM
      ((((toWebGLRenderingContextBase self) ^. jsf "getShaderInfoLog"
           [toJSVal shader])
          >>= fromMaybeJSString)
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContextBase.getShaderInfoLog Mozilla WebGLRenderingContextBase.getShaderInfoLog documentation> 
getShaderInfoLogUnchecked ::
                          (MonadDOM m, IsWebGLRenderingContextBase self,
                           FromJSString result) =>
                            self -> Maybe WebGLShader -> m result
getShaderInfoLogUnchecked self shader
  = liftDOM
      (((toWebGLRenderingContextBase self) ^. jsf "getShaderInfoLog"
          [toJSVal shader])
         >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContextBase.getShaderPrecisionFormat Mozilla WebGLRenderingContextBase.getShaderPrecisionFormat documentation> 
getShaderPrecisionFormat ::
                         (MonadDOM m, IsWebGLRenderingContextBase self) =>
                           self -> GLenum -> GLenum -> m WebGLShaderPrecisionFormat
getShaderPrecisionFormat self shadertype precisiontype
  = liftDOM
      (((toWebGLRenderingContextBase self) ^.
          jsf "getShaderPrecisionFormat"
          [toJSVal shadertype, toJSVal precisiontype])
         >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContextBase.getShaderPrecisionFormat Mozilla WebGLRenderingContextBase.getShaderPrecisionFormat documentation> 
getShaderPrecisionFormat_ ::
                          (MonadDOM m, IsWebGLRenderingContextBase self) =>
                            self -> GLenum -> GLenum -> m ()
getShaderPrecisionFormat_ self shadertype precisiontype
  = liftDOM
      (void
         ((toWebGLRenderingContextBase self) ^.
            jsf "getShaderPrecisionFormat"
            [toJSVal shadertype, toJSVal precisiontype]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContextBase.getShaderSource Mozilla WebGLRenderingContextBase.getShaderSource documentation> 
getShaderSource ::
                (MonadDOM m, IsWebGLRenderingContextBase self,
                 FromJSString result) =>
                  self -> Maybe WebGLShader -> m (Maybe result)
getShaderSource self shader
  = liftDOM
      (((toWebGLRenderingContextBase self) ^. jsf "getShaderSource"
          [toJSVal shader])
         >>= fromMaybeJSString)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContextBase.getShaderSource Mozilla WebGLRenderingContextBase.getShaderSource documentation> 
getShaderSource_ ::
                 (MonadDOM m, IsWebGLRenderingContextBase self) =>
                   self -> Maybe WebGLShader -> m ()
getShaderSource_ self shader
  = liftDOM
      (void
         ((toWebGLRenderingContextBase self) ^. jsf "getShaderSource"
            [toJSVal shader]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContextBase.getShaderSource Mozilla WebGLRenderingContextBase.getShaderSource documentation> 
getShaderSourceUnsafe ::
                      (MonadDOM m, IsWebGLRenderingContextBase self, HasCallStack,
                       FromJSString result) =>
                        self -> Maybe WebGLShader -> m result
getShaderSourceUnsafe self shader
  = liftDOM
      ((((toWebGLRenderingContextBase self) ^. jsf "getShaderSource"
           [toJSVal shader])
          >>= fromMaybeJSString)
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContextBase.getShaderSource Mozilla WebGLRenderingContextBase.getShaderSource documentation> 
getShaderSourceUnchecked ::
                         (MonadDOM m, IsWebGLRenderingContextBase self,
                          FromJSString result) =>
                           self -> Maybe WebGLShader -> m result
getShaderSourceUnchecked self shader
  = liftDOM
      (((toWebGLRenderingContextBase self) ^. jsf "getShaderSource"
          [toJSVal shader])
         >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContextBase.getTexParameter Mozilla WebGLRenderingContextBase.getTexParameter documentation> 
getTexParameter ::
                (MonadDOM m, IsWebGLRenderingContextBase self) =>
                  self -> GLenum -> GLenum -> m JSVal
getTexParameter self target pname
  = liftDOM
      (((toWebGLRenderingContextBase self) ^. jsf "getTexParameter"
          [toJSVal target, toJSVal pname])
         >>= toJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContextBase.getTexParameter Mozilla WebGLRenderingContextBase.getTexParameter documentation> 
getTexParameter_ ::
                 (MonadDOM m, IsWebGLRenderingContextBase self) =>
                   self -> GLenum -> GLenum -> m ()
getTexParameter_ self target pname
  = liftDOM
      (void
         ((toWebGLRenderingContextBase self) ^. jsf "getTexParameter"
            [toJSVal target, toJSVal pname]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContextBase.getUniform Mozilla WebGLRenderingContextBase.getUniform documentation> 
getUniform ::
           (MonadDOM m, IsWebGLRenderingContextBase self) =>
             self -> Maybe WebGLProgram -> Maybe WebGLUniformLocation -> m JSVal
getUniform self program location
  = liftDOM
      (((toWebGLRenderingContextBase self) ^. jsf "getUniform"
          [toJSVal program, toJSVal location])
         >>= toJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContextBase.getUniform Mozilla WebGLRenderingContextBase.getUniform documentation> 
getUniform_ ::
            (MonadDOM m, IsWebGLRenderingContextBase self) =>
              self -> Maybe WebGLProgram -> Maybe WebGLUniformLocation -> m ()
getUniform_ self program location
  = liftDOM
      (void
         ((toWebGLRenderingContextBase self) ^. jsf "getUniform"
            [toJSVal program, toJSVal location]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContextBase.getUniformLocation Mozilla WebGLRenderingContextBase.getUniformLocation documentation> 
getUniformLocation ::
                   (MonadDOM m, IsWebGLRenderingContextBase self, ToJSString name) =>
                     self -> Maybe WebGLProgram -> name -> m WebGLUniformLocation
getUniformLocation self program name
  = liftDOM
      (((toWebGLRenderingContextBase self) ^. jsf "getUniformLocation"
          [toJSVal program, toJSVal name])
         >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContextBase.getUniformLocation Mozilla WebGLRenderingContextBase.getUniformLocation documentation> 
getUniformLocation_ ::
                    (MonadDOM m, IsWebGLRenderingContextBase self, ToJSString name) =>
                      self -> Maybe WebGLProgram -> name -> m ()
getUniformLocation_ self program name
  = liftDOM
      (void
         ((toWebGLRenderingContextBase self) ^. jsf "getUniformLocation"
            [toJSVal program, toJSVal name]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContextBase.getVertexAttrib Mozilla WebGLRenderingContextBase.getVertexAttrib documentation> 
getVertexAttrib ::
                (MonadDOM m, IsWebGLRenderingContextBase self) =>
                  self -> GLuint -> GLenum -> m JSVal
getVertexAttrib self index pname
  = liftDOM
      (((toWebGLRenderingContextBase self) ^. jsf "getVertexAttrib"
          [toJSVal index, toJSVal pname])
         >>= toJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContextBase.getVertexAttrib Mozilla WebGLRenderingContextBase.getVertexAttrib documentation> 
getVertexAttrib_ ::
                 (MonadDOM m, IsWebGLRenderingContextBase self) =>
                   self -> GLuint -> GLenum -> m ()
getVertexAttrib_ self index pname
  = liftDOM
      (void
         ((toWebGLRenderingContextBase self) ^. jsf "getVertexAttrib"
            [toJSVal index, toJSVal pname]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContextBase.getVertexAttribOffset Mozilla WebGLRenderingContextBase.getVertexAttribOffset documentation> 
getVertexAttribOffset ::
                      (MonadDOM m, IsWebGLRenderingContextBase self) =>
                        self -> GLuint -> GLenum -> m GLsizeiptr
getVertexAttribOffset self index pname
  = liftDOM
      (((toWebGLRenderingContextBase self) ^. jsf "getVertexAttribOffset"
          [toJSVal index, toJSVal pname])
         >>= integralFromDoubleFromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContextBase.getVertexAttribOffset Mozilla WebGLRenderingContextBase.getVertexAttribOffset documentation> 
getVertexAttribOffset_ ::
                       (MonadDOM m, IsWebGLRenderingContextBase self) =>
                         self -> GLuint -> GLenum -> m ()
getVertexAttribOffset_ self index pname
  = liftDOM
      (void
         ((toWebGLRenderingContextBase self) ^. jsf "getVertexAttribOffset"
            [toJSVal index, toJSVal pname]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContextBase.hint Mozilla WebGLRenderingContextBase.hint documentation> 
hint ::
     (MonadDOM m, IsWebGLRenderingContextBase self) =>
       self -> GLenum -> GLenum -> m ()
hint self target mode
  = liftDOM
      (void
         ((toWebGLRenderingContextBase self) ^. jsf "hint"
            [toJSVal target, toJSVal mode]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContextBase.isBuffer Mozilla WebGLRenderingContextBase.isBuffer documentation> 
isBuffer ::
         (MonadDOM m, IsWebGLRenderingContextBase self) =>
           self -> Maybe WebGLBuffer -> m GLboolean
isBuffer self buffer
  = liftDOM
      (((toWebGLRenderingContextBase self) ^. jsf "isBuffer"
          [toJSVal buffer])
         >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContextBase.isBuffer Mozilla WebGLRenderingContextBase.isBuffer documentation> 
isBuffer_ ::
          (MonadDOM m, IsWebGLRenderingContextBase self) =>
            self -> Maybe WebGLBuffer -> m ()
isBuffer_ self buffer
  = liftDOM
      (void
         ((toWebGLRenderingContextBase self) ^. jsf "isBuffer"
            [toJSVal buffer]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContextBase.isContextLost Mozilla WebGLRenderingContextBase.isContextLost documentation> 
isContextLost ::
              (MonadDOM m, IsWebGLRenderingContextBase self) =>
                self -> m GLboolean
isContextLost self
  = liftDOM
      (((toWebGLRenderingContextBase self) ^. jsf "isContextLost" ()) >>=
         fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContextBase.isContextLost Mozilla WebGLRenderingContextBase.isContextLost documentation> 
isContextLost_ ::
               (MonadDOM m, IsWebGLRenderingContextBase self) => self -> m ()
isContextLost_ self
  = liftDOM
      (void
         ((toWebGLRenderingContextBase self) ^. jsf "isContextLost" ()))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContextBase.isEnabled Mozilla WebGLRenderingContextBase.isEnabled documentation> 
isEnabled ::
          (MonadDOM m, IsWebGLRenderingContextBase self) =>
            self -> GLenum -> m GLboolean
isEnabled self cap
  = liftDOM
      (((toWebGLRenderingContextBase self) ^. jsf "isEnabled"
          [toJSVal cap])
         >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContextBase.isEnabled Mozilla WebGLRenderingContextBase.isEnabled documentation> 
isEnabled_ ::
           (MonadDOM m, IsWebGLRenderingContextBase self) =>
             self -> GLenum -> m ()
isEnabled_ self cap
  = liftDOM
      (void
         ((toWebGLRenderingContextBase self) ^. jsf "isEnabled"
            [toJSVal cap]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContextBase.isFramebuffer Mozilla WebGLRenderingContextBase.isFramebuffer documentation> 
isFramebuffer ::
              (MonadDOM m, IsWebGLRenderingContextBase self) =>
                self -> Maybe WebGLFramebuffer -> m GLboolean
isFramebuffer self framebuffer
  = liftDOM
      (((toWebGLRenderingContextBase self) ^. jsf "isFramebuffer"
          [toJSVal framebuffer])
         >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContextBase.isFramebuffer Mozilla WebGLRenderingContextBase.isFramebuffer documentation> 
isFramebuffer_ ::
               (MonadDOM m, IsWebGLRenderingContextBase self) =>
                 self -> Maybe WebGLFramebuffer -> m ()
isFramebuffer_ self framebuffer
  = liftDOM
      (void
         ((toWebGLRenderingContextBase self) ^. jsf "isFramebuffer"
            [toJSVal framebuffer]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContextBase.isProgram Mozilla WebGLRenderingContextBase.isProgram documentation> 
isProgram ::
          (MonadDOM m, IsWebGLRenderingContextBase self) =>
            self -> Maybe WebGLProgram -> m GLboolean
isProgram self program
  = liftDOM
      (((toWebGLRenderingContextBase self) ^. jsf "isProgram"
          [toJSVal program])
         >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContextBase.isProgram Mozilla WebGLRenderingContextBase.isProgram documentation> 
isProgram_ ::
           (MonadDOM m, IsWebGLRenderingContextBase self) =>
             self -> Maybe WebGLProgram -> m ()
isProgram_ self program
  = liftDOM
      (void
         ((toWebGLRenderingContextBase self) ^. jsf "isProgram"
            [toJSVal program]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContextBase.isRenderbuffer Mozilla WebGLRenderingContextBase.isRenderbuffer documentation> 
isRenderbuffer ::
               (MonadDOM m, IsWebGLRenderingContextBase self) =>
                 self -> Maybe WebGLRenderbuffer -> m GLboolean
isRenderbuffer self renderbuffer
  = liftDOM
      (((toWebGLRenderingContextBase self) ^. jsf "isRenderbuffer"
          [toJSVal renderbuffer])
         >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContextBase.isRenderbuffer Mozilla WebGLRenderingContextBase.isRenderbuffer documentation> 
isRenderbuffer_ ::
                (MonadDOM m, IsWebGLRenderingContextBase self) =>
                  self -> Maybe WebGLRenderbuffer -> m ()
isRenderbuffer_ self renderbuffer
  = liftDOM
      (void
         ((toWebGLRenderingContextBase self) ^. jsf "isRenderbuffer"
            [toJSVal renderbuffer]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContextBase.isShader Mozilla WebGLRenderingContextBase.isShader documentation> 
isShader ::
         (MonadDOM m, IsWebGLRenderingContextBase self) =>
           self -> Maybe WebGLShader -> m GLboolean
isShader self shader
  = liftDOM
      (((toWebGLRenderingContextBase self) ^. jsf "isShader"
          [toJSVal shader])
         >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContextBase.isShader Mozilla WebGLRenderingContextBase.isShader documentation> 
isShader_ ::
          (MonadDOM m, IsWebGLRenderingContextBase self) =>
            self -> Maybe WebGLShader -> m ()
isShader_ self shader
  = liftDOM
      (void
         ((toWebGLRenderingContextBase self) ^. jsf "isShader"
            [toJSVal shader]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContextBase.isTexture Mozilla WebGLRenderingContextBase.isTexture documentation> 
isTexture ::
          (MonadDOM m, IsWebGLRenderingContextBase self) =>
            self -> Maybe WebGLTexture -> m GLboolean
isTexture self texture
  = liftDOM
      (((toWebGLRenderingContextBase self) ^. jsf "isTexture"
          [toJSVal texture])
         >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContextBase.isTexture Mozilla WebGLRenderingContextBase.isTexture documentation> 
isTexture_ ::
           (MonadDOM m, IsWebGLRenderingContextBase self) =>
             self -> Maybe WebGLTexture -> m ()
isTexture_ self texture
  = liftDOM
      (void
         ((toWebGLRenderingContextBase self) ^. jsf "isTexture"
            [toJSVal texture]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContextBase.lineWidth Mozilla WebGLRenderingContextBase.lineWidth documentation> 
lineWidth ::
          (MonadDOM m, IsWebGLRenderingContextBase self) =>
            self -> GLfloat -> m ()
lineWidth self width
  = liftDOM
      (void
         ((toWebGLRenderingContextBase self) ^. jsf "lineWidth"
            [toJSVal width]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContextBase.linkProgram Mozilla WebGLRenderingContextBase.linkProgram documentation> 
linkProgram ::
            (MonadDOM m, IsWebGLRenderingContextBase self) =>
              self -> Maybe WebGLProgram -> m ()
linkProgram self program
  = liftDOM
      (void
         ((toWebGLRenderingContextBase self) ^. jsf "linkProgram"
            [toJSVal program]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContextBase.pixelStorei Mozilla WebGLRenderingContextBase.pixelStorei documentation> 
pixelStorei ::
            (MonadDOM m, IsWebGLRenderingContextBase self) =>
              self -> GLenum -> GLint -> m ()
pixelStorei self pname param
  = liftDOM
      (void
         ((toWebGLRenderingContextBase self) ^. jsf "pixelStorei"
            [toJSVal pname, toJSVal param]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContextBase.polygonOffset Mozilla WebGLRenderingContextBase.polygonOffset documentation> 
polygonOffset ::
              (MonadDOM m, IsWebGLRenderingContextBase self) =>
                self -> GLfloat -> GLfloat -> m ()
polygonOffset self factor units
  = liftDOM
      (void
         ((toWebGLRenderingContextBase self) ^. jsf "polygonOffset"
            [toJSVal factor, toJSVal units]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContextBase.readPixels Mozilla WebGLRenderingContextBase.readPixels documentation> 
readPixels ::
           (MonadDOM m, IsWebGLRenderingContextBase self,
            IsArrayBufferView pixels) =>
             self ->
               GLint ->
                 GLint -> GLsizei -> GLsizei -> GLenum -> GLenum -> pixels -> m ()
readPixels self x y width height format type' pixels
  = liftDOM
      (void
         ((toWebGLRenderingContextBase self) ^. jsf "readPixels"
            [toJSVal x, toJSVal y, toJSVal width, toJSVal height,
             toJSVal format, toJSVal type', toJSVal pixels]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContextBase.releaseShaderCompiler Mozilla WebGLRenderingContextBase.releaseShaderCompiler documentation> 
releaseShaderCompiler ::
                      (MonadDOM m, IsWebGLRenderingContextBase self) => self -> m ()
releaseShaderCompiler self
  = liftDOM
      (void
         ((toWebGLRenderingContextBase self) ^. jsf "releaseShaderCompiler"
            ()))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContextBase.renderbufferStorage Mozilla WebGLRenderingContextBase.renderbufferStorage documentation> 
renderbufferStorage ::
                    (MonadDOM m, IsWebGLRenderingContextBase self) =>
                      self -> GLenum -> GLenum -> GLsizei -> GLsizei -> m ()
renderbufferStorage self target internalformat width height
  = liftDOM
      (void
         ((toWebGLRenderingContextBase self) ^. jsf "renderbufferStorage"
            [toJSVal target, toJSVal internalformat, toJSVal width,
             toJSVal height]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContextBase.sampleCoverage Mozilla WebGLRenderingContextBase.sampleCoverage documentation> 
sampleCoverage ::
               (MonadDOM m, IsWebGLRenderingContextBase self) =>
                 self -> GLclampf -> GLboolean -> m ()
sampleCoverage self value invert
  = liftDOM
      (void
         ((toWebGLRenderingContextBase self) ^. jsf "sampleCoverage"
            [toJSVal value, toJSVal invert]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContextBase.scissor Mozilla WebGLRenderingContextBase.scissor documentation> 
scissor ::
        (MonadDOM m, IsWebGLRenderingContextBase self) =>
          self -> GLint -> GLint -> GLsizei -> GLsizei -> m ()
scissor self x y width height
  = liftDOM
      (void
         ((toWebGLRenderingContextBase self) ^. jsf "scissor"
            [toJSVal x, toJSVal y, toJSVal width, toJSVal height]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContextBase.shaderSource Mozilla WebGLRenderingContextBase.shaderSource documentation> 
shaderSource ::
             (MonadDOM m, IsWebGLRenderingContextBase self,
              ToJSString string) =>
               self -> Maybe WebGLShader -> string -> m ()
shaderSource self shader string
  = liftDOM
      (void
         ((toWebGLRenderingContextBase self) ^. jsf "shaderSource"
            [toJSVal shader, toJSVal string]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContextBase.stencilFunc Mozilla WebGLRenderingContextBase.stencilFunc documentation> 
stencilFunc ::
            (MonadDOM m, IsWebGLRenderingContextBase self) =>
              self -> GLenum -> GLint -> GLuint -> m ()
stencilFunc self func ref mask
  = liftDOM
      (void
         ((toWebGLRenderingContextBase self) ^. jsf "stencilFunc"
            [toJSVal func, toJSVal ref, toJSVal mask]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContextBase.stencilFuncSeparate Mozilla WebGLRenderingContextBase.stencilFuncSeparate documentation> 
stencilFuncSeparate ::
                    (MonadDOM m, IsWebGLRenderingContextBase self) =>
                      self -> GLenum -> GLenum -> GLint -> GLuint -> m ()
stencilFuncSeparate self face func ref mask
  = liftDOM
      (void
         ((toWebGLRenderingContextBase self) ^. jsf "stencilFuncSeparate"
            [toJSVal face, toJSVal func, toJSVal ref, toJSVal mask]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContextBase.stencilMask Mozilla WebGLRenderingContextBase.stencilMask documentation> 
stencilMask ::
            (MonadDOM m, IsWebGLRenderingContextBase self) =>
              self -> GLuint -> m ()
stencilMask self mask
  = liftDOM
      (void
         ((toWebGLRenderingContextBase self) ^. jsf "stencilMask"
            [toJSVal mask]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContextBase.stencilMaskSeparate Mozilla WebGLRenderingContextBase.stencilMaskSeparate documentation> 
stencilMaskSeparate ::
                    (MonadDOM m, IsWebGLRenderingContextBase self) =>
                      self -> GLenum -> GLuint -> m ()
stencilMaskSeparate self face mask
  = liftDOM
      (void
         ((toWebGLRenderingContextBase self) ^. jsf "stencilMaskSeparate"
            [toJSVal face, toJSVal mask]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContextBase.stencilOp Mozilla WebGLRenderingContextBase.stencilOp documentation> 
stencilOp ::
          (MonadDOM m, IsWebGLRenderingContextBase self) =>
            self -> GLenum -> GLenum -> GLenum -> m ()
stencilOp self fail zfail zpass
  = liftDOM
      (void
         ((toWebGLRenderingContextBase self) ^. jsf "stencilOp"
            [toJSVal fail, toJSVal zfail, toJSVal zpass]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContextBase.stencilOpSeparate Mozilla WebGLRenderingContextBase.stencilOpSeparate documentation> 
stencilOpSeparate ::
                  (MonadDOM m, IsWebGLRenderingContextBase self) =>
                    self -> GLenum -> GLenum -> GLenum -> GLenum -> m ()
stencilOpSeparate self face fail zfail zpass
  = liftDOM
      (void
         ((toWebGLRenderingContextBase self) ^. jsf "stencilOpSeparate"
            [toJSVal face, toJSVal fail, toJSVal zfail, toJSVal zpass]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContextBase.texParameterf Mozilla WebGLRenderingContextBase.texParameterf documentation> 
texParameterf ::
              (MonadDOM m, IsWebGLRenderingContextBase self) =>
                self -> GLenum -> GLenum -> GLfloat -> m ()
texParameterf self target pname param
  = liftDOM
      (void
         ((toWebGLRenderingContextBase self) ^. jsf "texParameterf"
            [toJSVal target, toJSVal pname, toJSVal param]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContextBase.texParameteri Mozilla WebGLRenderingContextBase.texParameteri documentation> 
texParameteri ::
              (MonadDOM m, IsWebGLRenderingContextBase self) =>
                self -> GLenum -> GLenum -> GLint -> m ()
texParameteri self target pname param
  = liftDOM
      (void
         ((toWebGLRenderingContextBase self) ^. jsf "texParameteri"
            [toJSVal target, toJSVal pname, toJSVal param]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContextBase.texImage2D Mozilla WebGLRenderingContextBase.texImage2D documentation> 
texImage2DView ::
               (MonadDOM m, IsWebGLRenderingContextBase self,
                IsArrayBufferView pixels) =>
                 self ->
                   GLenum ->
                     GLint ->
                       GLenum ->
                         GLsizei ->
                           GLsizei -> GLint -> GLenum -> GLenum -> Maybe pixels -> m ()
texImage2DView self target level internalformat width height border
  format type' pixels
  = liftDOM
      (void
         ((toWebGLRenderingContextBase self) ^. jsf "texImage2D"
            [toJSVal target, toJSVal level, toJSVal internalformat,
             toJSVal width, toJSVal height, toJSVal border, toJSVal format,
             toJSVal type', toJSVal pixels]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContextBase.texImage2D Mozilla WebGLRenderingContextBase.texImage2D documentation> 
texImage2D ::
           (MonadDOM m, IsWebGLRenderingContextBase self,
            IsTexImageSource source) =>
             self ->
               GLenum ->
                 GLint -> GLenum -> GLenum -> GLenum -> Maybe source -> m ()
texImage2D self target level internalformat format type' source
  = liftDOM
      (void
         ((toWebGLRenderingContextBase self) ^. jsf "texImage2D"
            [toJSVal target, toJSVal level, toJSVal internalformat,
             toJSVal format, toJSVal type', toJSVal source]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContextBase.texSubImage2D Mozilla WebGLRenderingContextBase.texSubImage2D documentation> 
texSubImage2DView ::
                  (MonadDOM m, IsWebGLRenderingContextBase self,
                   IsArrayBufferView pixels) =>
                    self ->
                      GLenum ->
                        GLint ->
                          GLint ->
                            GLint ->
                              GLsizei -> GLsizei -> GLenum -> GLenum -> Maybe pixels -> m ()
texSubImage2DView self target level xoffset yoffset width height
  format type' pixels
  = liftDOM
      (void
         ((toWebGLRenderingContextBase self) ^. jsf "texSubImage2D"
            [toJSVal target, toJSVal level, toJSVal xoffset, toJSVal yoffset,
             toJSVal width, toJSVal height, toJSVal format, toJSVal type',
             toJSVal pixels]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContextBase.texSubImage2D Mozilla WebGLRenderingContextBase.texSubImage2D documentation> 
texSubImage2D ::
              (MonadDOM m, IsWebGLRenderingContextBase self,
               IsTexImageSource source) =>
                self ->
                  GLenum ->
                    GLint -> GLint -> GLint -> GLenum -> GLenum -> Maybe source -> m ()
texSubImage2D self target level xoffset yoffset format type' source
  = liftDOM
      (void
         ((toWebGLRenderingContextBase self) ^. jsf "texSubImage2D"
            [toJSVal target, toJSVal level, toJSVal xoffset, toJSVal yoffset,
             toJSVal format, toJSVal type', toJSVal source]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContextBase.uniform1f Mozilla WebGLRenderingContextBase.uniform1f documentation> 
uniform1f ::
          (MonadDOM m, IsWebGLRenderingContextBase self) =>
            self -> Maybe WebGLUniformLocation -> GLfloat -> m ()
uniform1f self location x
  = liftDOM
      (void
         ((toWebGLRenderingContextBase self) ^. jsf "uniform1f"
            [toJSVal location, toJSVal x]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContextBase.uniform2f Mozilla WebGLRenderingContextBase.uniform2f documentation> 
uniform2f ::
          (MonadDOM m, IsWebGLRenderingContextBase self) =>
            self -> Maybe WebGLUniformLocation -> GLfloat -> GLfloat -> m ()
uniform2f self location x y
  = liftDOM
      (void
         ((toWebGLRenderingContextBase self) ^. jsf "uniform2f"
            [toJSVal location, toJSVal x, toJSVal y]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContextBase.uniform3f Mozilla WebGLRenderingContextBase.uniform3f documentation> 
uniform3f ::
          (MonadDOM m, IsWebGLRenderingContextBase self) =>
            self ->
              Maybe WebGLUniformLocation -> GLfloat -> GLfloat -> GLfloat -> m ()
uniform3f self location x y z
  = liftDOM
      (void
         ((toWebGLRenderingContextBase self) ^. jsf "uniform3f"
            [toJSVal location, toJSVal x, toJSVal y, toJSVal z]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContextBase.uniform4f Mozilla WebGLRenderingContextBase.uniform4f documentation> 
uniform4f ::
          (MonadDOM m, IsWebGLRenderingContextBase self) =>
            self ->
              Maybe WebGLUniformLocation ->
                GLfloat -> GLfloat -> GLfloat -> GLfloat -> m ()
uniform4f self location x y z w
  = liftDOM
      (void
         ((toWebGLRenderingContextBase self) ^. jsf "uniform4f"
            [toJSVal location, toJSVal x, toJSVal y, toJSVal z, toJSVal w]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContextBase.uniform1i Mozilla WebGLRenderingContextBase.uniform1i documentation> 
uniform1i ::
          (MonadDOM m, IsWebGLRenderingContextBase self) =>
            self -> Maybe WebGLUniformLocation -> GLint -> m ()
uniform1i self location x
  = liftDOM
      (void
         ((toWebGLRenderingContextBase self) ^. jsf "uniform1i"
            [toJSVal location, toJSVal x]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContextBase.uniform2i Mozilla WebGLRenderingContextBase.uniform2i documentation> 
uniform2i ::
          (MonadDOM m, IsWebGLRenderingContextBase self) =>
            self -> Maybe WebGLUniformLocation -> GLint -> GLint -> m ()
uniform2i self location x y
  = liftDOM
      (void
         ((toWebGLRenderingContextBase self) ^. jsf "uniform2i"
            [toJSVal location, toJSVal x, toJSVal y]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContextBase.uniform3i Mozilla WebGLRenderingContextBase.uniform3i documentation> 
uniform3i ::
          (MonadDOM m, IsWebGLRenderingContextBase self) =>
            self ->
              Maybe WebGLUniformLocation -> GLint -> GLint -> GLint -> m ()
uniform3i self location x y z
  = liftDOM
      (void
         ((toWebGLRenderingContextBase self) ^. jsf "uniform3i"
            [toJSVal location, toJSVal x, toJSVal y, toJSVal z]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContextBase.uniform4i Mozilla WebGLRenderingContextBase.uniform4i documentation> 
uniform4i ::
          (MonadDOM m, IsWebGLRenderingContextBase self) =>
            self ->
              Maybe WebGLUniformLocation ->
                GLint -> GLint -> GLint -> GLint -> m ()
uniform4i self location x y z w
  = liftDOM
      (void
         ((toWebGLRenderingContextBase self) ^. jsf "uniform4i"
            [toJSVal location, toJSVal x, toJSVal y, toJSVal z, toJSVal w]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContextBase.uniform1fv Mozilla WebGLRenderingContextBase.uniform1fv documentation> 
uniform1fv ::
           (MonadDOM m, IsWebGLRenderingContextBase self, IsFloat32List v) =>
             self -> Maybe WebGLUniformLocation -> v -> m ()
uniform1fv self location v
  = liftDOM
      (void
         ((toWebGLRenderingContextBase self) ^. jsf "uniform1fv"
            [toJSVal location, toJSVal v]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContextBase.uniform2fv Mozilla WebGLRenderingContextBase.uniform2fv documentation> 
uniform2fv ::
           (MonadDOM m, IsWebGLRenderingContextBase self, IsFloat32List v) =>
             self -> Maybe WebGLUniformLocation -> v -> m ()
uniform2fv self location v
  = liftDOM
      (void
         ((toWebGLRenderingContextBase self) ^. jsf "uniform2fv"
            [toJSVal location, toJSVal v]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContextBase.uniform3fv Mozilla WebGLRenderingContextBase.uniform3fv documentation> 
uniform3fv ::
           (MonadDOM m, IsWebGLRenderingContextBase self, IsFloat32List v) =>
             self -> Maybe WebGLUniformLocation -> v -> m ()
uniform3fv self location v
  = liftDOM
      (void
         ((toWebGLRenderingContextBase self) ^. jsf "uniform3fv"
            [toJSVal location, toJSVal v]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContextBase.uniform4fv Mozilla WebGLRenderingContextBase.uniform4fv documentation> 
uniform4fv ::
           (MonadDOM m, IsWebGLRenderingContextBase self, IsFloat32List v) =>
             self -> Maybe WebGLUniformLocation -> v -> m ()
uniform4fv self location v
  = liftDOM
      (void
         ((toWebGLRenderingContextBase self) ^. jsf "uniform4fv"
            [toJSVal location, toJSVal v]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContextBase.uniform1iv Mozilla WebGLRenderingContextBase.uniform1iv documentation> 
uniform1iv ::
           (MonadDOM m, IsWebGLRenderingContextBase self, IsInt32List v) =>
             self -> Maybe WebGLUniformLocation -> v -> m ()
uniform1iv self location v
  = liftDOM
      (void
         ((toWebGLRenderingContextBase self) ^. jsf "uniform1iv"
            [toJSVal location, toJSVal v]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContextBase.uniform2iv Mozilla WebGLRenderingContextBase.uniform2iv documentation> 
uniform2iv ::
           (MonadDOM m, IsWebGLRenderingContextBase self, IsInt32List v) =>
             self -> Maybe WebGLUniformLocation -> v -> m ()
uniform2iv self location v
  = liftDOM
      (void
         ((toWebGLRenderingContextBase self) ^. jsf "uniform2iv"
            [toJSVal location, toJSVal v]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContextBase.uniform3iv Mozilla WebGLRenderingContextBase.uniform3iv documentation> 
uniform3iv ::
           (MonadDOM m, IsWebGLRenderingContextBase self, IsInt32List v) =>
             self -> Maybe WebGLUniformLocation -> v -> m ()
uniform3iv self location v
  = liftDOM
      (void
         ((toWebGLRenderingContextBase self) ^. jsf "uniform3iv"
            [toJSVal location, toJSVal v]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContextBase.uniform4iv Mozilla WebGLRenderingContextBase.uniform4iv documentation> 
uniform4iv ::
           (MonadDOM m, IsWebGLRenderingContextBase self, IsInt32List v) =>
             self -> Maybe WebGLUniformLocation -> v -> m ()
uniform4iv self location v
  = liftDOM
      (void
         ((toWebGLRenderingContextBase self) ^. jsf "uniform4iv"
            [toJSVal location, toJSVal v]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContextBase.uniformMatrix2fv Mozilla WebGLRenderingContextBase.uniformMatrix2fv documentation> 
uniformMatrix2fv ::
                 (MonadDOM m, IsWebGLRenderingContextBase self,
                  IsFloat32List array) =>
                   self -> Maybe WebGLUniformLocation -> GLboolean -> array -> m ()
uniformMatrix2fv self location transpose array
  = liftDOM
      (void
         ((toWebGLRenderingContextBase self) ^. jsf "uniformMatrix2fv"
            [toJSVal location, toJSVal transpose, toJSVal array]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContextBase.uniformMatrix3fv Mozilla WebGLRenderingContextBase.uniformMatrix3fv documentation> 
uniformMatrix3fv ::
                 (MonadDOM m, IsWebGLRenderingContextBase self,
                  IsFloat32List array) =>
                   self -> Maybe WebGLUniformLocation -> GLboolean -> array -> m ()
uniformMatrix3fv self location transpose array
  = liftDOM
      (void
         ((toWebGLRenderingContextBase self) ^. jsf "uniformMatrix3fv"
            [toJSVal location, toJSVal transpose, toJSVal array]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContextBase.uniformMatrix4fv Mozilla WebGLRenderingContextBase.uniformMatrix4fv documentation> 
uniformMatrix4fv ::
                 (MonadDOM m, IsWebGLRenderingContextBase self,
                  IsFloat32List array) =>
                   self -> Maybe WebGLUniformLocation -> GLboolean -> array -> m ()
uniformMatrix4fv self location transpose array
  = liftDOM
      (void
         ((toWebGLRenderingContextBase self) ^. jsf "uniformMatrix4fv"
            [toJSVal location, toJSVal transpose, toJSVal array]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContextBase.useProgram Mozilla WebGLRenderingContextBase.useProgram documentation> 
useProgram ::
           (MonadDOM m, IsWebGLRenderingContextBase self) =>
             self -> Maybe WebGLProgram -> m ()
useProgram self program
  = liftDOM
      (void
         ((toWebGLRenderingContextBase self) ^. jsf "useProgram"
            [toJSVal program]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContextBase.validateProgram Mozilla WebGLRenderingContextBase.validateProgram documentation> 
validateProgram ::
                (MonadDOM m, IsWebGLRenderingContextBase self) =>
                  self -> Maybe WebGLProgram -> m ()
validateProgram self program
  = liftDOM
      (void
         ((toWebGLRenderingContextBase self) ^. jsf "validateProgram"
            [toJSVal program]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContextBase.vertexAttrib1f Mozilla WebGLRenderingContextBase.vertexAttrib1f documentation> 
vertexAttrib1f ::
               (MonadDOM m, IsWebGLRenderingContextBase self) =>
                 self -> GLuint -> GLfloat -> m ()
vertexAttrib1f self index x
  = liftDOM
      (void
         ((toWebGLRenderingContextBase self) ^. jsf "vertexAttrib1f"
            [toJSVal index, toJSVal x]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContextBase.vertexAttrib2f Mozilla WebGLRenderingContextBase.vertexAttrib2f documentation> 
vertexAttrib2f ::
               (MonadDOM m, IsWebGLRenderingContextBase self) =>
                 self -> GLuint -> GLfloat -> GLfloat -> m ()
vertexAttrib2f self index x y
  = liftDOM
      (void
         ((toWebGLRenderingContextBase self) ^. jsf "vertexAttrib2f"
            [toJSVal index, toJSVal x, toJSVal y]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContextBase.vertexAttrib3f Mozilla WebGLRenderingContextBase.vertexAttrib3f documentation> 
vertexAttrib3f ::
               (MonadDOM m, IsWebGLRenderingContextBase self) =>
                 self -> GLuint -> GLfloat -> GLfloat -> GLfloat -> m ()
vertexAttrib3f self index x y z
  = liftDOM
      (void
         ((toWebGLRenderingContextBase self) ^. jsf "vertexAttrib3f"
            [toJSVal index, toJSVal x, toJSVal y, toJSVal z]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContextBase.vertexAttrib4f Mozilla WebGLRenderingContextBase.vertexAttrib4f documentation> 
vertexAttrib4f ::
               (MonadDOM m, IsWebGLRenderingContextBase self) =>
                 self -> GLuint -> GLfloat -> GLfloat -> GLfloat -> GLfloat -> m ()
vertexAttrib4f self index x y z w
  = liftDOM
      (void
         ((toWebGLRenderingContextBase self) ^. jsf "vertexAttrib4f"
            [toJSVal index, toJSVal x, toJSVal y, toJSVal z, toJSVal w]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContextBase.vertexAttrib1fv Mozilla WebGLRenderingContextBase.vertexAttrib1fv documentation> 
vertexAttrib1fv ::
                (MonadDOM m, IsWebGLRenderingContextBase self,
                 IsFloat32List values) =>
                  self -> GLuint -> values -> m ()
vertexAttrib1fv self index values
  = liftDOM
      (void
         ((toWebGLRenderingContextBase self) ^. jsf "vertexAttrib1fv"
            [toJSVal index, toJSVal values]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContextBase.vertexAttrib2fv Mozilla WebGLRenderingContextBase.vertexAttrib2fv documentation> 
vertexAttrib2fv ::
                (MonadDOM m, IsWebGLRenderingContextBase self,
                 IsFloat32List values) =>
                  self -> GLuint -> values -> m ()
vertexAttrib2fv self index values
  = liftDOM
      (void
         ((toWebGLRenderingContextBase self) ^. jsf "vertexAttrib2fv"
            [toJSVal index, toJSVal values]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContextBase.vertexAttrib3fv Mozilla WebGLRenderingContextBase.vertexAttrib3fv documentation> 
vertexAttrib3fv ::
                (MonadDOM m, IsWebGLRenderingContextBase self,
                 IsFloat32List values) =>
                  self -> GLuint -> values -> m ()
vertexAttrib3fv self index values
  = liftDOM
      (void
         ((toWebGLRenderingContextBase self) ^. jsf "vertexAttrib3fv"
            [toJSVal index, toJSVal values]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContextBase.vertexAttrib4fv Mozilla WebGLRenderingContextBase.vertexAttrib4fv documentation> 
vertexAttrib4fv ::
                (MonadDOM m, IsWebGLRenderingContextBase self,
                 IsFloat32List values) =>
                  self -> GLuint -> values -> m ()
vertexAttrib4fv self index values
  = liftDOM
      (void
         ((toWebGLRenderingContextBase self) ^. jsf "vertexAttrib4fv"
            [toJSVal index, toJSVal values]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContextBase.vertexAttribPointer Mozilla WebGLRenderingContextBase.vertexAttribPointer documentation> 
vertexAttribPointer ::
                    (MonadDOM m, IsWebGLRenderingContextBase self) =>
                      self ->
                        GLuint ->
                          GLint -> GLenum -> GLboolean -> GLsizei -> GLintptr -> m ()
vertexAttribPointer self indx size type' normalized stride offset
  = liftDOM
      (void
         ((toWebGLRenderingContextBase self) ^. jsf "vertexAttribPointer"
            [toJSVal indx, toJSVal size, toJSVal type', toJSVal normalized,
             toJSVal stride, integralToDoubleToJSVal offset]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContextBase.viewport Mozilla WebGLRenderingContextBase.viewport documentation> 
viewport ::
         (MonadDOM m, IsWebGLRenderingContextBase self) =>
           self -> GLint -> GLint -> GLsizei -> GLsizei -> m ()
viewport self x y width height
  = liftDOM
      (void
         ((toWebGLRenderingContextBase self) ^. jsf "viewport"
            [toJSVal x, toJSVal y, toJSVal width, toJSVal height]))
pattern DEPTH_BUFFER_BIT = 256
pattern STENCIL_BUFFER_BIT = 1024
pattern COLOR_BUFFER_BIT = 16384
pattern POINTS = 0
pattern LINES = 1
pattern LINE_LOOP = 2
pattern LINE_STRIP = 3
pattern TRIANGLES = 4
pattern TRIANGLE_STRIP = 5
pattern TRIANGLE_FAN = 6
pattern ZERO = 0
pattern ONE = 1
pattern SRC_COLOR = 768
pattern ONE_MINUS_SRC_COLOR = 769
pattern SRC_ALPHA = 770
pattern ONE_MINUS_SRC_ALPHA = 771
pattern DST_ALPHA = 772
pattern ONE_MINUS_DST_ALPHA = 773
pattern DST_COLOR = 774
pattern ONE_MINUS_DST_COLOR = 775
pattern SRC_ALPHA_SATURATE = 776
pattern FUNC_ADD = 32774
pattern BLEND_EQUATION = 32777
pattern BLEND_EQUATION_RGB = 32777
pattern BLEND_EQUATION_ALPHA = 34877
pattern FUNC_SUBTRACT = 32778
pattern FUNC_REVERSE_SUBTRACT = 32779
pattern BLEND_DST_RGB = 32968
pattern BLEND_SRC_RGB = 32969
pattern BLEND_DST_ALPHA = 32970
pattern BLEND_SRC_ALPHA = 32971
pattern CONSTANT_COLOR = 32769
pattern ONE_MINUS_CONSTANT_COLOR = 32770
pattern CONSTANT_ALPHA = 32771
pattern ONE_MINUS_CONSTANT_ALPHA = 32772
pattern BLEND_COLOR = 32773
pattern ARRAY_BUFFER = 34962
pattern ELEMENT_ARRAY_BUFFER = 34963
pattern ARRAY_BUFFER_BINDING = 34964
pattern ELEMENT_ARRAY_BUFFER_BINDING = 34965
pattern STREAM_DRAW = 35040
pattern STATIC_DRAW = 35044
pattern DYNAMIC_DRAW = 35048
pattern BUFFER_SIZE = 34660
pattern BUFFER_USAGE = 34661
pattern CURRENT_VERTEX_ATTRIB = 34342
pattern FRONT = 1028
pattern BACK = 1029
pattern FRONT_AND_BACK = 1032
pattern TEXTURE_2D = 3553
pattern CULL_FACE = 2884
pattern BLEND = 3042
pattern DITHER = 3024
pattern STENCIL_TEST = 2960
pattern DEPTH_TEST = 2929
pattern SCISSOR_TEST = 3089
pattern POLYGON_OFFSET_FILL = 32823
pattern SAMPLE_ALPHA_TO_COVERAGE = 32926
pattern SAMPLE_COVERAGE = 32928
pattern NO_ERROR = 0
pattern INVALID_ENUM = 1280
pattern INVALID_VALUE = 1281
pattern INVALID_OPERATION = 1282
pattern OUT_OF_MEMORY = 1285
pattern CW = 2304
pattern CCW = 2305
pattern LINE_WIDTH = 2849
pattern ALIASED_POINT_SIZE_RANGE = 33901
pattern ALIASED_LINE_WIDTH_RANGE = 33902
pattern CULL_FACE_MODE = 2885
pattern FRONT_FACE = 2886
pattern DEPTH_RANGE = 2928
pattern DEPTH_WRITEMASK = 2930
pattern DEPTH_CLEAR_VALUE = 2931
pattern DEPTH_FUNC = 2932
pattern STENCIL_CLEAR_VALUE = 2961
pattern STENCIL_FUNC = 2962
pattern STENCIL_FAIL = 2964
pattern STENCIL_PASS_DEPTH_FAIL = 2965
pattern STENCIL_PASS_DEPTH_PASS = 2966
pattern STENCIL_REF = 2967
pattern STENCIL_VALUE_MASK = 2963
pattern STENCIL_WRITEMASK = 2968
pattern STENCIL_BACK_FUNC = 34816
pattern STENCIL_BACK_FAIL = 34817
pattern STENCIL_BACK_PASS_DEPTH_FAIL = 34818
pattern STENCIL_BACK_PASS_DEPTH_PASS = 34819
pattern STENCIL_BACK_REF = 36003
pattern STENCIL_BACK_VALUE_MASK = 36004
pattern STENCIL_BACK_WRITEMASK = 36005
pattern VIEWPORT = 2978
pattern SCISSOR_BOX = 3088
pattern COLOR_CLEAR_VALUE = 3106
pattern COLOR_WRITEMASK = 3107
pattern UNPACK_ALIGNMENT = 3317
pattern PACK_ALIGNMENT = 3333
pattern MAX_TEXTURE_SIZE = 3379
pattern MAX_VIEWPORT_DIMS = 3386
pattern SUBPIXEL_BITS = 3408
pattern RED_BITS = 3410
pattern GREEN_BITS = 3411
pattern BLUE_BITS = 3412
pattern ALPHA_BITS = 3413
pattern DEPTH_BITS = 3414
pattern STENCIL_BITS = 3415
pattern POLYGON_OFFSET_UNITS = 10752
pattern POLYGON_OFFSET_FACTOR = 32824
pattern TEXTURE_BINDING_2D = 32873
pattern SAMPLE_BUFFERS = 32936
pattern SAMPLES = 32937
pattern SAMPLE_COVERAGE_VALUE = 32938
pattern SAMPLE_COVERAGE_INVERT = 32939
pattern COMPRESSED_TEXTURE_FORMATS = 34467
pattern DONT_CARE = 4352
pattern FASTEST = 4353
pattern NICEST = 4354
pattern GENERATE_MIPMAP_HINT = 33170
pattern BYTE = 5120
pattern UNSIGNED_BYTE = 5121
pattern SHORT = 5122
pattern UNSIGNED_SHORT = 5123
pattern INT = 5124
pattern UNSIGNED_INT = 5125
pattern FLOAT = 5126
pattern DEPTH_COMPONENT = 6402
pattern ALPHA = 6406
pattern RGB = 6407
pattern RGBA = 6408
pattern LUMINANCE = 6409
pattern LUMINANCE_ALPHA = 6410
pattern UNSIGNED_SHORT_4_4_4_4 = 32819
pattern UNSIGNED_SHORT_5_5_5_1 = 32820
pattern UNSIGNED_SHORT_5_6_5 = 33635
pattern FRAGMENT_SHADER = 35632
pattern VERTEX_SHADER = 35633
pattern MAX_VERTEX_ATTRIBS = 34921
pattern MAX_VERTEX_UNIFORM_VECTORS = 36347
pattern MAX_VARYING_VECTORS = 36348
pattern MAX_COMBINED_TEXTURE_IMAGE_UNITS = 35661
pattern MAX_VERTEX_TEXTURE_IMAGE_UNITS = 35660
pattern MAX_TEXTURE_IMAGE_UNITS = 34930
pattern MAX_FRAGMENT_UNIFORM_VECTORS = 36349
pattern SHADER_TYPE = 35663
pattern DELETE_STATUS = 35712
pattern LINK_STATUS = 35714
pattern VALIDATE_STATUS = 35715
pattern ATTACHED_SHADERS = 35717
pattern ACTIVE_UNIFORMS = 35718
pattern ACTIVE_ATTRIBUTES = 35721
pattern SHADING_LANGUAGE_VERSION = 35724
pattern CURRENT_PROGRAM = 35725
pattern NEVER = 512
pattern LESS = 513
pattern EQUAL = 514
pattern LEQUAL = 515
pattern GREATER = 516
pattern NOTEQUAL = 517
pattern GEQUAL = 518
pattern ALWAYS = 519
pattern KEEP = 7680
pattern REPLACE = 7681
pattern INCR = 7682
pattern DECR = 7683
pattern INVERT = 5386
pattern INCR_WRAP = 34055
pattern DECR_WRAP = 34056
pattern VENDOR = 7936
pattern RENDERER = 7937
pattern VERSION = 7938
pattern NEAREST = 9728
pattern LINEAR = 9729
pattern NEAREST_MIPMAP_NEAREST = 9984
pattern LINEAR_MIPMAP_NEAREST = 9985
pattern NEAREST_MIPMAP_LINEAR = 9986
pattern LINEAR_MIPMAP_LINEAR = 9987
pattern TEXTURE_MAG_FILTER = 10240
pattern TEXTURE_MIN_FILTER = 10241
pattern TEXTURE_WRAP_S = 10242
pattern TEXTURE_WRAP_T = 10243
pattern TEXTURE = 5890
pattern TEXTURE_CUBE_MAP = 34067
pattern TEXTURE_BINDING_CUBE_MAP = 34068
pattern TEXTURE_CUBE_MAP_POSITIVE_X = 34069
pattern TEXTURE_CUBE_MAP_NEGATIVE_X = 34070
pattern TEXTURE_CUBE_MAP_POSITIVE_Y = 34071
pattern TEXTURE_CUBE_MAP_NEGATIVE_Y = 34072
pattern TEXTURE_CUBE_MAP_POSITIVE_Z = 34073
pattern TEXTURE_CUBE_MAP_NEGATIVE_Z = 34074
pattern MAX_CUBE_MAP_TEXTURE_SIZE = 34076
pattern TEXTURE0 = 33984
pattern TEXTURE1 = 33985
pattern TEXTURE2 = 33986
pattern TEXTURE3 = 33987
pattern TEXTURE4 = 33988
pattern TEXTURE5 = 33989
pattern TEXTURE6 = 33990
pattern TEXTURE7 = 33991
pattern TEXTURE8 = 33992
pattern TEXTURE9 = 33993
pattern TEXTURE10 = 33994
pattern TEXTURE11 = 33995
pattern TEXTURE12 = 33996
pattern TEXTURE13 = 33997
pattern TEXTURE14 = 33998
pattern TEXTURE15 = 33999
pattern TEXTURE16 = 34000
pattern TEXTURE17 = 34001
pattern TEXTURE18 = 34002
pattern TEXTURE19 = 34003
pattern TEXTURE20 = 34004
pattern TEXTURE21 = 34005
pattern TEXTURE22 = 34006
pattern TEXTURE23 = 34007
pattern TEXTURE24 = 34008
pattern TEXTURE25 = 34009
pattern TEXTURE26 = 34010
pattern TEXTURE27 = 34011
pattern TEXTURE28 = 34012
pattern TEXTURE29 = 34013
pattern TEXTURE30 = 34014
pattern TEXTURE31 = 34015
pattern ACTIVE_TEXTURE = 34016
pattern REPEAT = 10497
pattern CLAMP_TO_EDGE = 33071
pattern MIRRORED_REPEAT = 33648
pattern FLOAT_VEC2 = 35664
pattern FLOAT_VEC3 = 35665
pattern FLOAT_VEC4 = 35666
pattern INT_VEC2 = 35667
pattern INT_VEC3 = 35668
pattern INT_VEC4 = 35669
pattern BOOL = 35670
pattern BOOL_VEC2 = 35671
pattern BOOL_VEC3 = 35672
pattern BOOL_VEC4 = 35673
pattern FLOAT_MAT2 = 35674
pattern FLOAT_MAT3 = 35675
pattern FLOAT_MAT4 = 35676
pattern SAMPLER_2D = 35678
pattern SAMPLER_CUBE = 35680
pattern VERTEX_ATTRIB_ARRAY_ENABLED = 34338
pattern VERTEX_ATTRIB_ARRAY_SIZE = 34339
pattern VERTEX_ATTRIB_ARRAY_STRIDE = 34340
pattern VERTEX_ATTRIB_ARRAY_TYPE = 34341
pattern VERTEX_ATTRIB_ARRAY_NORMALIZED = 34922
pattern VERTEX_ATTRIB_ARRAY_POINTER = 34373
pattern VERTEX_ATTRIB_ARRAY_BUFFER_BINDING = 34975
pattern IMPLEMENTATION_COLOR_READ_TYPE = 35738
pattern IMPLEMENTATION_COLOR_READ_FORMAT = 35739
pattern COMPILE_STATUS = 35713
pattern LOW_FLOAT = 36336
pattern MEDIUM_FLOAT = 36337
pattern HIGH_FLOAT = 36338
pattern LOW_INT = 36339
pattern MEDIUM_INT = 36340
pattern HIGH_INT = 36341
pattern FRAMEBUFFER = 36160
pattern RENDERBUFFER = 36161
pattern RGBA4 = 32854
pattern RGB5_A1 = 32855
pattern RGB565 = 36194
pattern DEPTH_COMPONENT16 = 33189
pattern STENCIL_INDEX = 6401
pattern STENCIL_INDEX8 = 36168
pattern DEPTH_STENCIL = 34041
pattern RENDERBUFFER_WIDTH = 36162
pattern RENDERBUFFER_HEIGHT = 36163
pattern RENDERBUFFER_INTERNAL_FORMAT = 36164
pattern RENDERBUFFER_RED_SIZE = 36176
pattern RENDERBUFFER_GREEN_SIZE = 36177
pattern RENDERBUFFER_BLUE_SIZE = 36178
pattern RENDERBUFFER_ALPHA_SIZE = 36179
pattern RENDERBUFFER_DEPTH_SIZE = 36180
pattern RENDERBUFFER_STENCIL_SIZE = 36181
pattern FRAMEBUFFER_ATTACHMENT_OBJECT_TYPE = 36048
pattern FRAMEBUFFER_ATTACHMENT_OBJECT_NAME = 36049
pattern FRAMEBUFFER_ATTACHMENT_TEXTURE_LEVEL = 36050
pattern FRAMEBUFFER_ATTACHMENT_TEXTURE_CUBE_MAP_FACE = 36051
pattern COLOR_ATTACHMENT0 = 36064
pattern DEPTH_ATTACHMENT = 36096
pattern STENCIL_ATTACHMENT = 36128
pattern DEPTH_STENCIL_ATTACHMENT = 33306
pattern NONE = 0
pattern FRAMEBUFFER_COMPLETE = 36053
pattern FRAMEBUFFER_INCOMPLETE_ATTACHMENT = 36054
pattern FRAMEBUFFER_INCOMPLETE_MISSING_ATTACHMENT = 36055
pattern FRAMEBUFFER_INCOMPLETE_DIMENSIONS = 36057
pattern FRAMEBUFFER_UNSUPPORTED = 36061
pattern FRAMEBUFFER_BINDING = 36006
pattern RENDERBUFFER_BINDING = 36007
pattern MAX_RENDERBUFFER_SIZE = 34024
pattern INVALID_FRAMEBUFFER_OPERATION = 1286
pattern UNPACK_FLIP_Y_WEBGL = 37440
pattern UNPACK_PREMULTIPLY_ALPHA_WEBGL = 37441
pattern CONTEXT_LOST_WEBGL = 37442
pattern UNPACK_COLORSPACE_CONVERSION_WEBGL = 37443
pattern BROWSER_DEFAULT_WEBGL = 37444

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContextBase.canvas Mozilla WebGLRenderingContextBase.canvas documentation> 
getCanvas ::
          (MonadDOM m, IsWebGLRenderingContextBase self) =>
            self -> m HTMLCanvasElement
getCanvas self
  = liftDOM
      (((toWebGLRenderingContextBase self) ^. js "canvas") >>=
         fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContextBase.drawingBufferWidth Mozilla WebGLRenderingContextBase.drawingBufferWidth documentation> 
getDrawingBufferWidth ::
                      (MonadDOM m, IsWebGLRenderingContextBase self) => self -> m GLsizei
getDrawingBufferWidth self
  = liftDOM
      (((toWebGLRenderingContextBase self) ^. js "drawingBufferWidth")
         >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContextBase.drawingBufferHeight Mozilla WebGLRenderingContextBase.drawingBufferHeight documentation> 
getDrawingBufferHeight ::
                       (MonadDOM m, IsWebGLRenderingContextBase self) => self -> m GLsizei
getDrawingBufferHeight self
  = liftDOM
      (((toWebGLRenderingContextBase self) ^. js "drawingBufferHeight")
         >>= fromJSValUnchecked)
