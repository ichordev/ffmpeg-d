/*
 * This file is part of FFmpeg.
 *
 * FFmpeg is free software; you can redistribute it and/or
 * modify it under the terms of the GNU Lesser General Public
 * License as published by the Free Software Foundation; either
 * version 2.1 of the License, or (at your option) any later version.
 *
 * FFmpeg is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
 * Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public
 * License along with FFmpeg; if not, write to the Free Software
 * Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA
 */
module ffmpeg.libavcodec.avcodec_version;

import ffmpeg.libavutil.avutil_version;
import ffmpeg.libavcodec;

extern (C):

/**
 * @file
 * @ingroup libavc
 * Libavcodec version macros.
 */

enum LIBAVCODEC_VERSION_MAJOR = 58;
enum LIBAVCODEC_VERSION_MINOR = 134;
enum LIBAVCODEC_VERSION_MICRO = 100;

enum LIBAVCODEC_VERSION_INT = AV_VERSION_INT(LIBAVCODEC_VERSION_MAJOR, LIBAVCODEC_VERSION_MINOR, LIBAVCODEC_VERSION_MICRO);
enum LIBAVCODEC_VERSION = AV_VERSION(LIBAVCODEC_VERSION_MAJOR, LIBAVCODEC_VERSION_MINOR, LIBAVCODEC_VERSION_MICRO);
enum LIBAVCODEC_BUILD = LIBAVCODEC_VERSION_INT;

/**
 * FF_API_* defines may be placed below to indicate public API that will be
 * dropped at a future version bump. The defines themselves are not part of
 * the public API and may change, break or disappear at any time.
 *
 * @note, when bumping the major version it is recommended to manually
 * disable each FF_API_* in its own commit instead of disabling them all
 * at once through the bump. This improves the git bisect-ability of the change.
 */

enum FF_API_AVCTX_TIMEBASE = LIBAVCODEC_VERSION_MAJOR < 59;

enum FF_API_CODED_FRAME = LIBAVCODEC_VERSION_MAJOR < 59;

enum FF_API_SIDEDATA_ONLY_PKT = LIBAVCODEC_VERSION_MAJOR < 59;

enum FF_API_VDPAU_PROFILE = LIBAVCODEC_VERSION_MAJOR < 59;

enum FF_API_CONVERGENCE_DURATION = LIBAVCODEC_VERSION_MAJOR < 59;

enum FF_API_AVPICTURE = LIBAVCODEC_VERSION_MAJOR < 59;

enum FF_API_AVPACKET_OLD_API = LIBAVCODEC_VERSION_MAJOR < 59;

enum FF_API_RTP_CALLBACK = LIBAVCODEC_VERSION_MAJOR < 59;

enum FF_API_VBV_DELAY = LIBAVCODEC_VERSION_MAJOR < 59;

enum FF_API_CODER_TYPE = LIBAVCODEC_VERSION_MAJOR < 59;

enum FF_API_STAT_BITS = LIBAVCODEC_VERSION_MAJOR < 59;

enum FF_API_PRIVATE_OPT = LIBAVCODEC_VERSION_MAJOR < 59;

enum FF_API_ASS_TIMING = LIBAVCODEC_VERSION_MAJOR < 59;

enum FF_API_OLD_BSF = LIBAVCODEC_VERSION_MAJOR < 59;

enum FF_API_COPY_CONTEXT = LIBAVCODEC_VERSION_MAJOR < 59;

enum FF_API_GET_CONTEXT_DEFAULTS = LIBAVCODEC_VERSION_MAJOR < 59;

enum FF_API_NVENC_OLD_NAME = LIBAVCODEC_VERSION_MAJOR < 59;

enum FF_API_STRUCT_VAAPI_CONTEXT = LIBAVCODEC_VERSION_MAJOR < 59;

enum FF_API_MERGE_SD_API = LIBAVCODEC_VERSION_MAJOR < 59;

enum FF_API_TAG_STRING = LIBAVCODEC_VERSION_MAJOR < 59;

enum FF_API_GETCHROMA = LIBAVCODEC_VERSION_MAJOR < 59;

enum FF_API_CODEC_GET_SET = LIBAVCODEC_VERSION_MAJOR < 59;

enum FF_API_USER_VISIBLE_AVHWACCEL = LIBAVCODEC_VERSION_MAJOR < 59;

enum FF_API_LOCKMGR = LIBAVCODEC_VERSION_MAJOR < 59;

enum FF_API_NEXT = LIBAVCODEC_VERSION_MAJOR < 59;

enum FF_API_UNSANITIZED_BITRATES = LIBAVCODEC_VERSION_MAJOR < 59;

enum FF_API_OPENH264_SLICE_MODE = LIBAVCODEC_VERSION_MAJOR < 59;

enum FF_API_OPENH264_CABAC = LIBAVCODEC_VERSION_MAJOR < 59;

enum FF_API_UNUSED_CODEC_CAPS = LIBAVCODEC_VERSION_MAJOR < 59;

enum FF_API_AVPRIV_PUT_BITS = LIBAVCODEC_VERSION_MAJOR < 59;

enum FF_API_OLD_ENCDEC = LIBAVCODEC_VERSION_MAJOR < 59;

enum FF_API_AVCODEC_PIX_FMT = LIBAVCODEC_VERSION_MAJOR < 59;

enum FF_API_MPV_RC_STRATEGY = LIBAVCODEC_VERSION_MAJOR < 59;

enum FF_API_PARSER_CHANGE = LIBAVCODEC_VERSION_MAJOR < 59;

enum FF_API_THREAD_SAFE_CALLBACKS = LIBAVCODEC_VERSION_MAJOR < 60;

enum FF_API_DEBUG_MV = LIBAVCODEC_VERSION_MAJOR < 60;

enum FF_API_GET_FRAME_CLASS = LIBAVCODEC_VERSION_MAJOR < 60;

enum FF_API_AUTO_THREADS = LIBAVCODEC_VERSION_MAJOR < 60;

enum FF_API_INIT_PACKET = LIBAVCODEC_VERSION_MAJOR < 60;

/* AVCODEC_VERSION_H */
