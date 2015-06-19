.class public Lcom/googlecode/javacv/cpp/avformat$AVIndexEntry;
.super Lcom/googlecode/javacpp/Pointer;
.source "avformat.java"
.field public static final AVINDEX_KEYFRAME:I = 0x1
.method static constructor <clinit>()V
.registers 0
invoke-static {}, Lcom/googlecode/javacpp/Loader;->load()Ljava/lang/String;
return-void
.end method
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V
invoke-direct {p0}, Lcom/googlecode/javacv/cpp/avformat$AVIndexEntry;->allocate()V
return-void
.end method
.method public constructor <init>(I)V
.registers 2
invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V
invoke-direct {p0, p1}, Lcom/googlecode/javacv/cpp/avformat$AVIndexEntry;->allocateArray(I)V
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
.method public native flags()I
.end method
.method public native flags(I)Lcom/googlecode/javacv/cpp/avformat$AVIndexEntry;
.end method
.method public native min_distance()I
.end method
.method public native min_distance(I)Lcom/googlecode/javacv/cpp/avformat$AVIndexEntry;
.end method
.method public native pos()J
.end method
.method public native pos(J)Lcom/googlecode/javacv/cpp/avformat$AVIndexEntry;
.end method
.method public bridge synthetic position(I)Lcom/googlecode/javacpp/Pointer;
.registers 3
invoke-virtual {p0, p1}, Lcom/googlecode/javacv/cpp/avformat$AVIndexEntry;->position(I)Lcom/googlecode/javacv/cpp/avformat$AVIndexEntry;
move-result-object v0
return-object v0
.end method
.method public position(I)Lcom/googlecode/javacv/cpp/avformat$AVIndexEntry;
.registers 3
invoke-super {p0, p1}, Lcom/googlecode/javacpp/Pointer;->position(I)Lcom/googlecode/javacpp/Pointer;
move-result-object v0
check-cast v0, Lcom/googlecode/javacv/cpp/avformat$AVIndexEntry;
return-object v0
.end method
.method public native size()I
.end method
.method public native size(I)Lcom/googlecode/javacv/cpp/avformat$AVIndexEntry;
.end method
.method public native timestamp()J
.end method
.method public native timestamp(J)Lcom/googlecode/javacv/cpp/avformat$AVIndexEntry;
.end method