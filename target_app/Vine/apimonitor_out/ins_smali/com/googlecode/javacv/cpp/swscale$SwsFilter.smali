.class public Lcom/googlecode/javacv/cpp/swscale$SwsFilter;
.super Lcom/googlecode/javacpp/Pointer;
.source "swscale.java"
.method static constructor <clinit>()V
.registers 0
invoke-static {}, Lcom/googlecode/javacpp/Loader;->load()Ljava/lang/String;
return-void
.end method
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V
invoke-direct {p0}, Lcom/googlecode/javacv/cpp/swscale$SwsFilter;->allocate()V
return-void
.end method
.method public constructor <init>(I)V
.registers 2
invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V
invoke-direct {p0, p1}, Lcom/googlecode/javacv/cpp/swscale$SwsFilter;->allocateArray(I)V
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
.method public native chrH(Lcom/googlecode/javacv/cpp/swscale$SwsVector;)Lcom/googlecode/javacv/cpp/swscale$SwsFilter;
.end method
.method public native chrH()Lcom/googlecode/javacv/cpp/swscale$SwsVector;
.end method
.method public native chrV(Lcom/googlecode/javacv/cpp/swscale$SwsVector;)Lcom/googlecode/javacv/cpp/swscale$SwsFilter;
.end method
.method public native chrV()Lcom/googlecode/javacv/cpp/swscale$SwsVector;
.end method
.method public native lumH(Lcom/googlecode/javacv/cpp/swscale$SwsVector;)Lcom/googlecode/javacv/cpp/swscale$SwsFilter;
.end method
.method public native lumH()Lcom/googlecode/javacv/cpp/swscale$SwsVector;
.end method
.method public native lumV(Lcom/googlecode/javacv/cpp/swscale$SwsVector;)Lcom/googlecode/javacv/cpp/swscale$SwsFilter;
.end method
.method public native lumV()Lcom/googlecode/javacv/cpp/swscale$SwsVector;
.end method
.method public bridge synthetic position(I)Lcom/googlecode/javacpp/Pointer;
.registers 3
invoke-virtual {p0, p1}, Lcom/googlecode/javacv/cpp/swscale$SwsFilter;->position(I)Lcom/googlecode/javacv/cpp/swscale$SwsFilter;
move-result-object v0
return-object v0
.end method
.method public position(I)Lcom/googlecode/javacv/cpp/swscale$SwsFilter;
.registers 3
invoke-super {p0, p1}, Lcom/googlecode/javacpp/Pointer;->position(I)Lcom/googlecode/javacpp/Pointer;
move-result-object v0
check-cast v0, Lcom/googlecode/javacv/cpp/swscale$SwsFilter;
return-object v0
.end method