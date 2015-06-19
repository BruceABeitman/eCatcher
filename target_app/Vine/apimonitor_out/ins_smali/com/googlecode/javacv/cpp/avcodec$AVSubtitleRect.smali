.class public Lcom/googlecode/javacv/cpp/avcodec$AVSubtitleRect;
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
invoke-direct {p0}, Lcom/googlecode/javacv/cpp/avcodec$AVSubtitleRect;->allocate()V
return-void
.end method
.method public constructor <init>(I)V
.registers 2
invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V
invoke-direct {p0, p1}, Lcom/googlecode/javacv/cpp/avcodec$AVSubtitleRect;->allocateArray(I)V
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
.method public native ass()Lcom/googlecode/javacpp/BytePointer;
.end method
.method public native ass(Lcom/googlecode/javacpp/BytePointer;)Lcom/googlecode/javacv/cpp/avcodec$AVSubtitleRect;
.end method
.method public native flags()I
.end method
.method public native flags(I)Lcom/googlecode/javacv/cpp/avcodec$AVSubtitleRect;
.end method
.method public native h()I
.end method
.method public native h(I)Lcom/googlecode/javacv/cpp/avcodec$AVSubtitleRect;
.end method
.method public native nb_colors()I
.end method
.method public native nb_colors(I)Lcom/googlecode/javacv/cpp/avcodec$AVSubtitleRect;
.end method
.method public native pict()Lcom/googlecode/javacv/cpp/avcodec$AVPicture;
.end method
.method public native pict(Lcom/googlecode/javacv/cpp/avcodec$AVPicture;)Lcom/googlecode/javacv/cpp/avcodec$AVSubtitleRect;
.end method
.method public bridge synthetic position(I)Lcom/googlecode/javacpp/Pointer;
.registers 3
invoke-virtual {p0, p1}, Lcom/googlecode/javacv/cpp/avcodec$AVSubtitleRect;->position(I)Lcom/googlecode/javacv/cpp/avcodec$AVSubtitleRect;
move-result-object v0
return-object v0
.end method
.method public position(I)Lcom/googlecode/javacv/cpp/avcodec$AVSubtitleRect;
.registers 3
invoke-super {p0, p1}, Lcom/googlecode/javacpp/Pointer;->position(I)Lcom/googlecode/javacpp/Pointer;
move-result-object v0
check-cast v0, Lcom/googlecode/javacv/cpp/avcodec$AVSubtitleRect;
return-object v0
.end method
.method public native text()Lcom/googlecode/javacpp/BytePointer;
.end method
.method public native text(Lcom/googlecode/javacpp/BytePointer;)Lcom/googlecode/javacv/cpp/avcodec$AVSubtitleRect;
.end method
.method public native type()I
.end method
.method public native type(I)Lcom/googlecode/javacv/cpp/avcodec$AVSubtitleRect;
.end method
.method public native w()I
.end method
.method public native w(I)Lcom/googlecode/javacv/cpp/avcodec$AVSubtitleRect;
.end method
.method public native x()I
.end method
.method public native x(I)Lcom/googlecode/javacv/cpp/avcodec$AVSubtitleRect;
.end method
.method public native y()I
.end method
.method public native y(I)Lcom/googlecode/javacv/cpp/avcodec$AVSubtitleRect;
.end method