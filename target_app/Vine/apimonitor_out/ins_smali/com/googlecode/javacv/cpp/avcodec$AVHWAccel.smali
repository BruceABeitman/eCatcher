.class public Lcom/googlecode/javacv/cpp/avcodec$AVHWAccel;
.super Lcom/googlecode/javacpp/Pointer;
.source "avcodec.java"
.method static constructor <clinit>()V
.registers 0
invoke-static {}, Lcom/googlecode/javacpp/Loader;->load()Ljava/lang/String;
return-void
.end method
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V
invoke-direct {p0}, Lcom/googlecode/javacv/cpp/avcodec$AVHWAccel;->allocate()V
return-void
.end method
.method public constructor <init>(I)V
.registers 2
invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V
invoke-direct {p0, p1}, Lcom/googlecode/javacv/cpp/avcodec$AVHWAccel;->allocateArray(I)V
return-void
.end method
.method public constructor <init>(Lcom/googlecode/javacpp/Pointer;)V
.registers 2
invoke-direct {p0, p1}, Lcom/googlecode/javacpp/Pointer;-><init>(Lcom/googlecode/javacpp/Pointer;)V
return-void
.end method
.method private native allocate()V
.end method
.method private native allocateArray(I)V
.end method
.method public native capabilities()I
.end method
.method public native capabilities(I)Lcom/googlecode/javacv/cpp/avcodec$AVHWAccel;
.end method
.method public native decode_slice()Lcom/googlecode/javacv/cpp/avcodec$AVHWAccel$Decode_slice_AVCodecContext_BytePointer_int;
.end method
.method public native decode_slice(Lcom/googlecode/javacv/cpp/avcodec$AVHWAccel$Decode_slice_AVCodecContext_BytePointer_int;)Lcom/googlecode/javacv/cpp/avcodec$AVHWAccel;
.end method
.method public native end_frame()Lcom/googlecode/javacv/cpp/avcodec$AVHWAccel$End_frame_AVCodecContext;
.end method
.method public native end_frame(Lcom/googlecode/javacv/cpp/avcodec$AVHWAccel$End_frame_AVCodecContext;)Lcom/googlecode/javacv/cpp/avcodec$AVHWAccel;
.end method
.method public native id()I
.end method
.method public native id(I)Lcom/googlecode/javacv/cpp/avcodec$AVHWAccel;
.end method
.method public native name()Lcom/googlecode/javacpp/BytePointer;
.end method
.method public native next()Lcom/googlecode/javacv/cpp/avcodec$AVHWAccel;
.end method
.method public native next(Lcom/googlecode/javacv/cpp/avcodec$AVHWAccel;)Lcom/googlecode/javacv/cpp/avcodec$AVHWAccel;
.end method
.method public native pix_fmt()I
.end method
.method public native pix_fmt(I)Lcom/googlecode/javacv/cpp/avcodec$AVHWAccel;
.end method
.method public bridge synthetic position(I)Lcom/googlecode/javacpp/Pointer;
.registers 3
invoke-virtual {p0, p1}, Lcom/googlecode/javacv/cpp/avcodec$AVHWAccel;->position(I)Lcom/googlecode/javacv/cpp/avcodec$AVHWAccel;
move-result-object v0
return-object v0
.end method
.method public position(I)Lcom/googlecode/javacv/cpp/avcodec$AVHWAccel;
.registers 3
invoke-super {p0, p1}, Lcom/googlecode/javacpp/Pointer;->position(I)Lcom/googlecode/javacpp/Pointer;
move-result-object v0
check-cast v0, Lcom/googlecode/javacv/cpp/avcodec$AVHWAccel;
return-object v0
.end method
.method public native priv_data_size()I
.end method
.method public native priv_data_size(I)Lcom/googlecode/javacv/cpp/avcodec$AVHWAccel;
.end method
.method public native start_frame()Lcom/googlecode/javacv/cpp/avcodec$AVHWAccel$Start_frame_AVCodecContext_BytePointer_int;
.end method
.method public native start_frame(Lcom/googlecode/javacv/cpp/avcodec$AVHWAccel$Start_frame_AVCodecContext_BytePointer_int;)Lcom/googlecode/javacv/cpp/avcodec$AVHWAccel;
.end method
.method public native type()I
.end method
.method public native type(I)Lcom/googlecode/javacv/cpp/avcodec$AVHWAccel;
.end method