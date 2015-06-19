.class public Lcom/instagram/cliffjumper/edit/photo/lux/LuxFilter;
.super Lcom/instagram/cliffjumper/edit/common/basefilter/BaseSimpleFilter;
.source "LuxFilter.java"
.implements Lcom/instagram/cliffjumper/edit/photo/lux/c;
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
.field private final a:Ljava/nio/FloatBuffer;
.field private c:I
.field private d:Lcom/instagram/cliffjumper/edit/photo/lux/a;
.method static constructor <clinit>()V
.registers 1
new-instance v0, Lcom/instagram/cliffjumper/edit/photo/lux/f;
invoke-direct {v0}, Lcom/instagram/cliffjumper/edit/photo/lux/f;-><init>()V
sput-object v0, Lcom/instagram/cliffjumper/edit/photo/lux/LuxFilter;->CREATOR:Landroid/os/Parcelable$Creator;
return-void
.end method
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Lcom/instagram/cliffjumper/edit/common/basefilter/BaseSimpleFilter;-><init>()V
const/4 v0, 0x1
invoke-static {v0}, Ljava/nio/FloatBuffer;->allocate(I)Ljava/nio/FloatBuffer;
move-result-object v0
iput-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/lux/LuxFilter;->a:Ljava/nio/FloatBuffer;
const/4 v0, -0x1
iput v0, p0, Lcom/instagram/cliffjumper/edit/photo/lux/LuxFilter;->c:I
return-void
.end method
.method public constructor <init>(Landroid/os/Parcel;)V
.registers 3
invoke-direct {p0, p1}, Lcom/instagram/cliffjumper/edit/common/basefilter/BaseSimpleFilter;-><init>(Landroid/os/Parcel;)V
const/4 v0, 0x1
invoke-static {v0}, Ljava/nio/FloatBuffer;->allocate(I)Ljava/nio/FloatBuffer;
move-result-object v0
iput-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/lux/LuxFilter;->a:Ljava/nio/FloatBuffer;
const/4 v0, -0x1
iput v0, p0, Lcom/instagram/cliffjumper/edit/photo/lux/LuxFilter;->c:I
invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I
move-result v0
invoke-virtual {p0, v0}, Lcom/instagram/cliffjumper/edit/photo/lux/LuxFilter;->a(I)V
return-void
.end method
.method public final a(I)V
.registers 6
iput p1, p0, Lcom/instagram/cliffjumper/edit/photo/lux/LuxFilter;->c:I
iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/lux/LuxFilter;->a:Ljava/nio/FloatBuffer;
const/4 v1, 0x0
int-to-float v2, p1
const/high16 v3, 0x42c8
div-float/2addr v2, v3
invoke-virtual {v0, v1, v2}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;
invoke-virtual {p0}, Lcom/instagram/cliffjumper/edit/photo/lux/LuxFilter;->n()V
return-void
.end method
.method public final a(Lcom/instagram/cliffjumper/edit/photo/lux/a;)V
.registers 2
iput-object p1, p0, Lcom/instagram/cliffjumper/edit/photo/lux/LuxFilter;->d:Lcom/instagram/cliffjumper/edit/photo/lux/a;
return-void
.end method
.method protected final a(Lcom/instagram/filterkit/b/b;Lcom/instagram/filterkit/e/a;Lcom/instagram/filterkit/e/c;)V
.registers 7
const-string v0, "u_strength"
iget-object v1, p0, Lcom/instagram/cliffjumper/edit/photo/lux/LuxFilter;->a:Ljava/nio/FloatBuffer;
invoke-virtual {p1, v0, v1}, Lcom/instagram/filterkit/b/b;->a(Ljava/lang/String;Ljava/nio/FloatBuffer;)V
const-string v0, "cdf"
iget-object v1, p0, Lcom/instagram/cliffjumper/edit/photo/lux/LuxFilter;->d:Lcom/instagram/cliffjumper/edit/photo/lux/a;
invoke-virtual {v1, p0}, Lcom/instagram/cliffjumper/edit/photo/lux/a;->b(Lcom/instagram/cliffjumper/edit/photo/lux/c;)I
move-result v1
invoke-virtual {p1, v0, v1}, Lcom/instagram/filterkit/b/b;->a(Ljava/lang/String;I)V
const-string v0, "image"
invoke-interface {p2}, Lcom/instagram/filterkit/e/a;->b()I
move-result v1
sget-object v2, Lcom/instagram/filterkit/b/c;->a:Lcom/instagram/filterkit/b/c;
invoke-virtual {p1, v0, v1, v2}, Lcom/instagram/filterkit/b/b;->a(Ljava/lang/String;ILcom/instagram/filterkit/b/c;)V
return-void
.end method
.method public final a(Lcom/instagram/filterkit/d/c;)V
.registers 3
invoke-super {p0, p1}, Lcom/instagram/cliffjumper/edit/common/basefilter/BaseSimpleFilter;->a(Lcom/instagram/filterkit/d/c;)V
iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/lux/LuxFilter;->d:Lcom/instagram/cliffjumper/edit/photo/lux/a;
invoke-virtual {p1}, Lcom/instagram/filterkit/d/c;->a()Lcom/instagram/filterkit/d/b;
invoke-virtual {v0, p0}, Lcom/instagram/cliffjumper/edit/photo/lux/a;->a(Lcom/instagram/cliffjumper/edit/photo/lux/c;)V
return-void
.end method
.method protected final b(Lcom/instagram/filterkit/d/c;)Lcom/instagram/filterkit/b/b;
.registers 4
const-string v0, "StarLight"
invoke-static {v0}, Lcom/instagram/cliffjumper/bridge/ShaderBridge;->a(Ljava/lang/String;)I
move-result v1
if-nez v1, :cond_a
const/4 v0, 0x0
:goto_9
return-object v0
:cond_a
new-instance v0, Lcom/instagram/filterkit/b/b;
invoke-direct {v0, v1}, Lcom/instagram/filterkit/b/b;-><init>(I)V
goto :goto_9
.end method
.method public final e()I
.registers 2
iget v0, p0, Lcom/instagram/cliffjumper/edit/photo/lux/LuxFilter;->c:I
return v0
.end method
.method public writeToParcel(Landroid/os/Parcel;I)V
.registers 4
invoke-super {p0, p1, p2}, Lcom/instagram/cliffjumper/edit/common/basefilter/BaseSimpleFilter;->writeToParcel(Landroid/os/Parcel;I)V
iget v0, p0, Lcom/instagram/cliffjumper/edit/photo/lux/LuxFilter;->c:I
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V
return-void
.end method