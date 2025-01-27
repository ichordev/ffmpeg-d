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
module ffmpeg.libavdevice.avdevice_version;

import ffmpeg.libavutil.avutil_version;

extern (C):


/**
 * @file
 * @ingroup lavd
 * Libavdevice version macros
 */

enum LIBAVDEVICE_VERSION_MAJOR = 58;
enum LIBAVDEVICE_VERSION_MINOR = 13;
enum LIBAVDEVICE_VERSION_MICRO = 100;

enum LIBAVDEVICE_VERSION_INT = AV_VERSION_INT(LIBAVDEVICE_VERSION_MAJOR, LIBAVDEVICE_VERSION_MINOR, LIBAVDEVICE_VERSION_MICRO);
enum LIBAVDEVICE_VERSION = AV_VERSION(LIBAVDEVICE_VERSION_MAJOR, LIBAVDEVICE_VERSION_MINOR, LIBAVDEVICE_VERSION_MICRO);
enum LIBAVDEVICE_BUILD = LIBAVDEVICE_VERSION_INT;

/**
 * FF_API_* defines may be placed below to indicate public API that will be
 * dropped at a future version bump. The defines themselves are not part of
 * the public API and may change, break or disappear at any time.
 */

enum FF_API_DEVICE_CAPABILITIES = LIBAVDEVICE_VERSION_MAJOR < 60;

/* AVDEVICE_VERSION_H */
