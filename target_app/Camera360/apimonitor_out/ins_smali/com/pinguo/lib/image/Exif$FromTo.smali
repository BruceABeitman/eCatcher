.class  Lcom/pinguo/lib/image/Exif$FromTo;
.super Ljava/lang/Object;
.source "Exif.java"
.field private from:I
.field private length:I
.method private constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method synthetic constructor <init>(Lcom/pinguo/lib/image/Exif$FromTo;)V
.registers 2
invoke-direct {p0}, Lcom/pinguo/lib/image/Exif$FromTo;-><init>()V
return-void
.end method
.method static synthetic access$0(Lcom/pinguo/lib/image/Exif$FromTo;)I
.registers 2
iget v0, p0, Lcom/pinguo/lib/image/Exif$FromTo;->length:I
return v0
.end method
.method static synthetic access$1(Lcom/pinguo/lib/image/Exif$FromTo;)I
.registers 2
iget v0, p0, Lcom/pinguo/lib/image/Exif$FromTo;->from:I
return v0
.end method
.method static synthetic access$3(Lcom/pinguo/lib/image/Exif$FromTo;I)V
.registers 2
iput p1, p0, Lcom/pinguo/lib/image/Exif$FromTo;->from:I
return-void
.end method
.method static synthetic access$4(Lcom/pinguo/lib/image/Exif$FromTo;I)V
.registers 2
iput p1, p0, Lcom/pinguo/lib/image/Exif$FromTo;->length:I
return-void
.end method