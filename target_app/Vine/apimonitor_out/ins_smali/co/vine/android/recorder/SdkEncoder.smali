.class public Lco/vine/android/recorder/SdkEncoder;
.super Ljava/lang/Object;
.source "SdkEncoder.java"
.implements Lco/vine/android/recorder/EncoderManager$Encoder;
.method public constructor <init>()V
.registers 13
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const-string v9, "*****************************"
invoke-static {v9}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;)V
invoke-static {}, Landroid/media/MediaCodecList;->getCodecCount()I
move-result v1
const/4 v4, 0x0
:goto_d
if-ge v4, v1, :cond_3a
invoke-static {v4}, Landroid/media/MediaCodecList;->getCodecInfoAt(I)Landroid/media/MediaCodecInfo;
move-result-object v2
const-string v9, "Codec: {}."
invoke-virtual {v2}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;
move-result-object v10
invoke-static {v9, v10}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;)V
invoke-virtual {v2}, Landroid/media/MediaCodecInfo;->getSupportedTypes()[Ljava/lang/String;
move-result-object v8
move-object v0, v8
array-length v6, v0
const/4 v5, 0x0
:goto_23
if-ge v5, v6, :cond_37
aget-object v7, v0, v5
invoke-virtual {v2, v7}, Landroid/media/MediaCodecInfo;->getCapabilitiesForType(Ljava/lang/String;)Landroid/media/MediaCodecInfo$CodecCapabilities;
move-result-object v3
const-string v9, "Codec support {} with {} and {}."
iget-object v10, v3, Landroid/media/MediaCodecInfo$CodecCapabilities;->colorFormats:[I
iget-object v11, v3, Landroid/media/MediaCodecInfo$CodecCapabilities;->profileLevels:[Landroid/media/MediaCodecInfo$CodecProfileLevel;
invoke-static {v9, v7, v10, v11}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
add-int/lit8 v5, v5, 0x1
goto :goto_23
:cond_37
add-int/lit8 v4, v4, 0x1
goto :goto_d
:cond_3a
const-string v9, "*****************************"
invoke-static {v9}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;)V
return-void
.end method
.method public transcode(Lco/vine/android/recorder/EncoderManager$EncoderBoss;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V
.registers 40
:try_start_0
new-instance v33, Ljava/io/BufferedOutputStream;
new-instance v4, Ljava/io/FileOutputStream;
new-instance v6, Ljava/io/File;
move-object/from16 v0, p3
invoke-direct {v6, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-direct {v4, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
move-object/from16 v0, v33
invoke-direct {v0, v4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
const-string v4, "video/avc"
invoke-static {v4}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;
move-result-object v20
new-instance v21, Landroid/media/MediaExtractor;
invoke-direct/range {v21 .. v21}, Landroid/media/MediaExtractor;-><init>()V
move-object/from16 v0, v21
move-object/from16 v1, p2
invoke-virtual {v0, v1}, Landroid/media/MediaExtractor;->setDataSource(Ljava/lang/String;)V
const/4 v2, 0x0
const/16 v32, 0x0
const/16 v22, 0x0
:goto_2a
invoke-virtual/range {v21 .. v21}, Landroid/media/MediaExtractor;->getTrackCount()I
move-result v4
move/from16 v0, v22
if-ge v0, v4, :cond_8d
invoke-virtual/range {v21 .. v22}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;
move-result-object v25
const-string v4, "mime"
move-object/from16 v0, v25
invoke-virtual {v0, v4}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v27
const-string v4, "video/"
move-object/from16 v0, v27
invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v4
if-eqz v4, :cond_ac
invoke-virtual/range {v21 .. v22}, Landroid/media/MediaExtractor;->selectTrack(I)V
const-string v4, "video/avc"
const/16 v6, 0x1e0
const/16 v8, 0x1e0
invoke-static {v4, v6, v8}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;
move-result-object v32
const-string v4, "bitrate"
sget v6, Lco/vine/android/recorder/RecordConfigUtils;->VIDEO_BIT_RATE:I
move-object/from16 v0, v32
invoke-virtual {v0, v4, v6}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V
const-string v4, "frame-rate"
const/16 v6, 0x1e
move-object/from16 v0, v32
invoke-virtual {v0, v4, v6}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V
const-string v4, "color-format"
const/16 v6, 0x15
move-object/from16 v0, v32
invoke-virtual {v0, v4, v6}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V
const-string v4, "i-frame-interval"
const/4 v6, 0x5
move-object/from16 v0, v32
invoke-virtual {v0, v4, v6}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V
invoke-static/range {v27 .. v27}, Landroid/media/MediaCodec;->createDecoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;
move-result-object v2
const-string v4, "color-format"
const/16 v6, 0x13
move-object/from16 v0, v25
invoke-virtual {v0, v4, v6}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V
const/4 v4, 0x0
const/4 v6, 0x0
const/4 v8, 0x0
move-object/from16 v0, v25
invoke-virtual {v2, v0, v4, v6, v8}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V
:cond_8d
if-eqz v2, :cond_91
if-nez v32, :cond_b0
:cond_91
new-instance v4, Ljava/io/IOException;
const-string v6, "Invalid file: {}, {}."
move-object/from16 v0, v32
invoke-static {v6, v2, v0}, Lcom/edisonwang/android/slog/MessageFormatter;->format(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Lcom/edisonwang/android/slog/FormattingTuple;
move-result-object v6
invoke-virtual {v6}, Lcom/edisonwang/android/slog/FormattingTuple;->getMessage()Ljava/lang/String;
move-result-object v6
invoke-direct {v4, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
throw v4
:try_end_a3
.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_a3} :catch_a3
:catch_a3
move-exception v17
new-instance v4, Lco/vine/android/recorder/EncoderManager$EncodingException;
move-object/from16 v0, v17
invoke-direct {v4, v0}, Lco/vine/android/recorder/EncoderManager$EncodingException;-><init>(Ljava/lang/Exception;)V
throw v4
:cond_ac
add-int/lit8 v22, v22, 0x1
goto/16 :goto_2a
:cond_b0
const/4 v4, 0x0
const/4 v6, 0x0
const/4 v8, 0x1
:try_start_b3
move-object/from16 v0, v20
move-object/from16 v1, v32
invoke-virtual {v0, v1, v4, v6, v8}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V
invoke-virtual/range {v20 .. v20}, Landroid/media/MediaCodec;->start()V
invoke-virtual {v2}, Landroid/media/MediaCodec;->start()V
invoke-virtual {v2}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;
move-result-object v15
invoke-virtual {v2}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;
move-result-object v16
invoke-virtual/range {v20 .. v20}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;
move-result-object v18
invoke-virtual/range {v20 .. v20}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;
move-result-object v19
new-instance v23, Landroid/media/MediaCodec$BufferInfo;
invoke-direct/range {v23 .. v23}, Landroid/media/MediaCodec$BufferInfo;-><init>()V
const/16 v26, 0x0
:cond_d7
invoke-static {}, Ljava/lang/Thread;->interrupted()Z
move-result v4
if-nez v4, :cond_1c4
if-nez v26, :cond_101
const-wide/16 v8, -0x1
invoke-virtual {v2, v8, v9}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I
move-result v3
if-ltz v3, :cond_101
aget-object v13, v15, v3
const/4 v4, 0x0
move-object/from16 v0, v21
invoke-virtual {v0, v13, v4}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I
move-result v5
if-gez v5, :cond_1da
const-string v4, "InputBuffer BUFFER_FLAG_END_OF_STREAM"
invoke-static {v4}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;)V
const/4 v4, 0x0
const/4 v5, 0x0
const-wide/16 v6, 0x0
const/4 v8, 0x4
invoke-virtual/range {v2 .. v8}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V
const/16 v26, 0x1
:goto_101
:cond_101
const-wide/16 v8, -0x1
move-object/from16 v0, v23
invoke-virtual {v2, v0, v8, v9}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I
move-result v29
packed-switch v29, :pswitch_data_22a
aget-object v13, v16, v29
new-instance v4, Ljava/lang/StringBuilder;
invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
const-string v6, "We can\'t use this buffer but render it due to the API limit, "
invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
invoke-static {v4}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;)V
:try_end_124
.catch Ljava/lang/Exception; {:try_start_b3 .. :try_end_124} :catch_a3
const-wide/16 v8, -0x1
:try_start_126
move-object/from16 v0, v20
invoke-virtual {v0, v8, v9}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I
move-result v7
if-ltz v7, :cond_1ff
aget-object v24, v18, v7
invoke-virtual/range {v24 .. v24}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;
new-instance v4, Ljava/lang/StringBuilder;
invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
const-string v6, "Input buffer: "
invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
move-object/from16 v0, v24
invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
invoke-static {v4}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;)V
move-object/from16 v0, v24
invoke-virtual {v0, v13}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
const/4 v8, 0x0
invoke-virtual/range {v24 .. v24}, Ljava/nio/ByteBuffer;->limit()I
move-result v9
move-object/from16 v0, v23
iget-wide v10, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J
const/4 v12, 0x0
move-object/from16 v6, v20
invoke-virtual/range {v6 .. v12}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V
:goto_15f
new-instance v14, Landroid/media/MediaCodec$BufferInfo;
invoke-direct {v14}, Landroid/media/MediaCodec$BufferInfo;-><init>()V
const-wide/16 v8, 0x0
move-object/from16 v0, v20
invoke-virtual {v0, v14, v8, v9}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I
move-result v31
packed-switch v31, :pswitch_data_234
aget-object v30, v19, v31
iget v4, v14, Landroid/media/MediaCodec$BufferInfo;->size:I
new-array v0, v4, [B
move-object/from16 v28, v0
move-object/from16 v0, v30
move-object/from16 v1, v28
invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;
const/4 v4, 0x0
move-object/from16 v0, v28
array-length v6, v0
move-object/from16 v0, v33
move-object/from16 v1, v28
invoke-virtual {v0, v1, v4, v6}, Ljava/io/BufferedOutputStream;->write([BII)V
const-string v4, "AvcEncoder"
new-instance v6, Ljava/lang/StringBuilder;
invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V
move-object/from16 v0, v28
array-length v8, v0
invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v6
const-string v8, " bytes written"
invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v6
invoke-static {v4, v6}, Lcom/edisonwang/android/slog/SLog;->i(Ljava/lang/String;Ljava/lang/Object;)V
const/4 v4, 0x0
move-object/from16 v0, v20
move/from16 v1, v31
invoke-virtual {v0, v1, v4}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V
:goto_1ac
:try_end_1ac
.catch Ljava/lang/Throwable; {:try_start_126 .. :try_end_1ac} :catch_206
.catch Ljava/lang/Exception; {:try_start_126 .. :try_end_1ac} :catch_a3
const/4 v4, 0x1
:try_start_1ad
move/from16 v0, v29
invoke-virtual {v2, v0, v4}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V
invoke-virtual/range {v21 .. v21}, Landroid/media/MediaExtractor;->advance()Z
:goto_1b5
move-object/from16 v0, v23
iget v4, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I
and-int/lit8 v4, v4, 0x4
if-eqz v4, :cond_d7
const-string v4, "DecodeActivity"
const-string v6, "OutputBuffer BUFFER_FLAG_END_OF_STREAM"
invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
:cond_1c4
invoke-virtual {v2}, Landroid/media/MediaCodec;->stop()V
invoke-virtual {v2}, Landroid/media/MediaCodec;->release()V
invoke-virtual/range {v21 .. v21}, Landroid/media/MediaExtractor;->release()V
invoke-virtual/range {v20 .. v20}, Landroid/media/MediaCodec;->stop()V
invoke-virtual/range {v20 .. v20}, Landroid/media/MediaCodec;->release()V
invoke-virtual/range {v33 .. v33}, Ljava/io/BufferedOutputStream;->flush()V
invoke-virtual/range {v33 .. v33}, Ljava/io/BufferedOutputStream;->close()V
return-void
:cond_1da
const/4 v4, 0x0
invoke-virtual/range {v21 .. v21}, Landroid/media/MediaExtractor;->getSampleTime()J
move-result-wide v6
const/4 v8, 0x0
invoke-virtual/range {v2 .. v8}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V
goto/16 :goto_101
:pswitch_1e5
const-string v4, "INFO_OUTPUT_BUFFERS_CHANGED"
invoke-static {v4}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;)V
invoke-virtual {v2}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;
move-result-object v16
goto :goto_1b5
:pswitch_1ef
const-string v4, "New format found: {}"
invoke-virtual {v2}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;
move-result-object v6
invoke-static {v4, v6}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;)V
goto :goto_1b5
:pswitch_1f9
const-string v4, "dequeueOutputBuffer timed out!"
invoke-static {v4}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;)V
:try_end_1fe
.catch Ljava/lang/Exception; {:try_start_1ad .. :try_end_1fe} :catch_a3
goto :goto_1b5
:try_start_1ff
:cond_1ff
const-string v4, "Input buffer timeout."
invoke-static {v4}, Lcom/edisonwang/android/slog/SLog;->e(Ljava/lang/String;)V
:try_end_204
.catch Ljava/lang/Throwable; {:try_start_1ff .. :try_end_204} :catch_206
.catch Ljava/lang/Exception; {:try_start_1ff .. :try_end_204} :catch_a3
goto/16 :goto_15f
:catch_206
move-exception v34
:try_start_207
const-string v4, "Something wrong."
move-object/from16 v0, v34
invoke-static {v4, v0}, Lcom/edisonwang/android/slog/SLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
:try_end_20e
.catch Ljava/lang/Exception; {:try_start_207 .. :try_end_20e} :catch_a3
goto :goto_1ac
:pswitch_20f
:try_start_20f
const-string v4, "INFO_OUTPUT_BUFFERS_CHANGED"
invoke-static {v4}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;)V
invoke-virtual/range {v20 .. v20}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;
move-result-object v19
goto :goto_1ac
:pswitch_219
const-string v4, "New format found: {}"
invoke-virtual/range {v20 .. v20}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;
move-result-object v6
invoke-static {v4, v6}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;)V
goto :goto_1ac
:pswitch_223
const-string v4, "dequeueOutputBuffer timed out!"
invoke-static {v4}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;)V
:try_end_228
.catch Ljava/lang/Throwable; {:try_start_20f .. :try_end_228} :catch_206
.catch Ljava/lang/Exception; {:try_start_20f .. :try_end_228} :catch_a3
goto :goto_1ac
nop
:pswitch_data_234
.packed-switch -0x3
:pswitch_20f
:pswitch_219
:pswitch_223
.end packed-switch
:pswitch_data_22a
.packed-switch -0x3
:pswitch_1e5
:pswitch_1ef
:pswitch_1f9
.end packed-switch
.end method