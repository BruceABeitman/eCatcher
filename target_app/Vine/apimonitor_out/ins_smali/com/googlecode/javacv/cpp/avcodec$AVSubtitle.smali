.class public Lcom/googlecode/javacv/cpp/avcodec$AVSubtitle;
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
invoke-direct {p0}, Lcom/googlecode/javacv/cpp/avcodec$AVSubtitle;->allocate()V
return-void
.end method
.method public constructor <init>(I)V
.registers 2
invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V
invoke-direct {p0, p1}, Lcom/googlecode/javacv/cpp/avcodec$AVSubtitle;->allocateArray(I)V
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
.method public native end_display_time()I
.end method
.method public native end_display_time(I)Lcom/googlecode/javacv/cpp/avcodec$AVSubtitle;
.end method
.method public native format(S)Lcom/googlecode/javacv/cpp/avcodec$AVSubtitle;
.end method
.method public native format()S
.end method
.method public native num_rects()I
.end method
.method public native num_rects(I)Lcom/googlecode/javacv/cpp/avcodec$AVSubtitle;
.end method
.method public bridge synthetic position(I)Lcom/googlecode/javacpp/Pointer;
.registers 3
invoke-virtual {p0, p1}, Lcom/googlecode/javacv/cpp/avcodec$AVSubtitle;->position(I)Lcom/googlecode/javacv/cpp/avcodec$AVSubtitle;
move-result-object v0
return-object v0
.end method
.method public position(I)Lcom/googlecode/javacv/cpp/avcodec$AVSubtitle;
.registers 3
invoke-super {p0, p1}, Lcom/googlecode/javacpp/Pointer;->position(I)Lcom/googlecode/javacpp/Pointer;
move-result-object v0
check-cast v0, Lcom/googlecode/javacv/cpp/avcodec$AVSubtitle;
return-object v0
.end method
.method public native pts()J
.end method
.method public native pts(J)Lcom/googlecode/javacv/cpp/avcodec$AVSubtitle;
.end method
.method public native rects()Lcom/googlecode/javacpp/PointerPointer;
.end method
.method public native rects(ILcom/googlecode/javacv/cpp/avcodec$AVSubtitleRect;)Lcom/googlecode/javacv/cpp/avcodec$AVSubtitle;
.end method
.method public native rects(I)Lcom/googlecode/javacv/cpp/avcodec$AVSubtitleRect;
.end method
.method public native start_display_time()I
.end method
.method public native start_display_time(I)Lcom/googlecode/javacv/cpp/avcodec$AVSubtitle;
.end method