.class public Lcom/googlecode/javacv/cpp/avformat$AVFrac;
.super Lcom/googlecode/javacpp/Pointer;
.source "avformat.java"
.method static constructor <clinit>()V
.registers 0
invoke-static {}, Lcom/googlecode/javacpp/Loader;->load()Ljava/lang/String;
return-void
.end method
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V
invoke-direct {p0}, Lcom/googlecode/javacv/cpp/avformat$AVFrac;->allocate()V
return-void
.end method
.method public constructor <init>(I)V
.registers 2
invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V
invoke-direct {p0, p1}, Lcom/googlecode/javacv/cpp/avformat$AVFrac;->allocateArray(I)V
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
.method public native den()J
.end method
.method public native den(J)Lcom/googlecode/javacv/cpp/avformat$AVFrac;
.end method
.method public native num()J
.end method
.method public native num(J)Lcom/googlecode/javacv/cpp/avformat$AVFrac;
.end method
.method public bridge synthetic position(I)Lcom/googlecode/javacpp/Pointer;
.registers 3
invoke-virtual {p0, p1}, Lcom/googlecode/javacv/cpp/avformat$AVFrac;->position(I)Lcom/googlecode/javacv/cpp/avformat$AVFrac;
move-result-object v0
return-object v0
.end method
.method public position(I)Lcom/googlecode/javacv/cpp/avformat$AVFrac;
.registers 3
invoke-super {p0, p1}, Lcom/googlecode/javacpp/Pointer;->position(I)Lcom/googlecode/javacpp/Pointer;
move-result-object v0
check-cast v0, Lcom/googlecode/javacv/cpp/avformat$AVFrac;
return-object v0
.end method
.method public native val()J
.end method
.method public native val(J)Lcom/googlecode/javacv/cpp/avformat$AVFrac;
.end method