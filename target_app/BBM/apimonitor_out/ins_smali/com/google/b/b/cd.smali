.class final Lcom/google/b/b/cd;
.super Ljava/lang/Object;
.source "Striped64.java"
.field static final a:Ljava/util/Random;
.field  b:I
.method static constructor <clinit>()V
.registers 1
new-instance v0, Ljava/util/Random;
invoke-direct {v0}, Ljava/util/Random;-><init>()V
sput-object v0, Lcom/google/b/b/cd;->a:Ljava/util/Random;
return-void
.end method
.method constructor <init>()V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
sget-object v0, Lcom/google/b/b/cd;->a:Ljava/util/Random;
invoke-virtual {v0}, Ljava/util/Random;->nextInt()I
move-result v0
if-nez v0, :cond_c
const/4 v0, 0x1
:cond_c
iput v0, p0, Lcom/google/b/b/cd;->b:I
return-void
.end method