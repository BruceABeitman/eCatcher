.class final Lcom/instagram/creation/photo/gallery/i;
.super Ljava/lang/Object;
.source "ImageListUber.java"
.implements Ljava/util/Comparator;
.method private constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method synthetic constructor <init>(B)V
.registers 2
invoke-direct {p0}, Lcom/instagram/creation/photo/gallery/i;-><init>()V
return-void
.end method
.method private static a(Lcom/instagram/creation/photo/gallery/j;Lcom/instagram/creation/photo/gallery/j;)I
.registers 6
iget-wide v0, p0, Lcom/instagram/creation/photo/gallery/j;->b:J
iget-wide v2, p1, Lcom/instagram/creation/photo/gallery/j;->b:J
cmp-long v0, v0, v2
if-eqz v0, :cond_14
iget-wide v0, p0, Lcom/instagram/creation/photo/gallery/j;->b:J
iget-wide v2, p1, Lcom/instagram/creation/photo/gallery/j;->b:J
cmp-long v0, v0, v2
if-gez v0, :cond_12
const/4 v0, 0x1
:goto_11
return v0
:cond_12
const/4 v0, -0x1
goto :goto_11
:cond_14
iget v0, p0, Lcom/instagram/creation/photo/gallery/j;->a:I
iget v1, p1, Lcom/instagram/creation/photo/gallery/j;->a:I
sub-int/2addr v0, v1
goto :goto_11
.end method
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
.registers 4
check-cast p1, Lcom/instagram/creation/photo/gallery/j;
check-cast p2, Lcom/instagram/creation/photo/gallery/j;
invoke-static {p1, p2}, Lcom/instagram/creation/photo/gallery/i;->a(Lcom/instagram/creation/photo/gallery/j;Lcom/instagram/creation/photo/gallery/j;)I
move-result v0
return v0
.end method