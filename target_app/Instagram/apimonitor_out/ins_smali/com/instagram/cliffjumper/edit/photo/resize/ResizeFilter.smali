.class public Lcom/instagram/cliffjumper/edit/photo/resize/ResizeFilter;
.super Ljava/lang/Object;
.source "ResizeFilter.java"
.implements Lcom/instagram/common/analytics/e;
.implements Lcom/instagram/filterkit/filter/IgFilter;
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
.field private static final a:Ljava/lang/Class;
.field private b:Z
.field private c:Lcom/instagram/filterkit/filter/IgFilter;
.field private d:Lcom/instagram/filterkit/filter/IgFilter;
.method static constructor <clinit>()V
.registers 1
new-instance v0, Lcom/instagram/cliffjumper/edit/photo/resize/d;
invoke-direct {v0}, Lcom/instagram/cliffjumper/edit/photo/resize/d;-><init>()V
sput-object v0, Lcom/instagram/cliffjumper/edit/photo/resize/ResizeFilter;->CREATOR:Landroid/os/Parcelable$Creator;
const-class v0, Lcom/instagram/cliffjumper/edit/photo/resize/ResizeFilter;
sput-object v0, Lcom/instagram/cliffjumper/edit/photo/resize/ResizeFilter;->a:Ljava/lang/Class;
return-void
.end method
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Lcom/instagram/cliffjumper/edit/photo/resize/IdentityFilter;
invoke-direct {v0}, Lcom/instagram/cliffjumper/edit/photo/resize/IdentityFilter;-><init>()V
iput-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/resize/ResizeFilter;->c:Lcom/instagram/filterkit/filter/IgFilter;
new-instance v0, Lcom/instagram/cliffjumper/edit/photo/resize/LanczosFilter;
invoke-direct {v0}, Lcom/instagram/cliffjumper/edit/photo/resize/LanczosFilter;-><init>()V
iput-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/resize/ResizeFilter;->d:Lcom/instagram/filterkit/filter/IgFilter;
invoke-static {}, Lcom/instagram/k/a/b;->a()Lcom/instagram/k/a/b;
move-result-object v0
invoke-virtual {v0}, Lcom/instagram/k/a/b;->g()Z
move-result v0
iput-boolean v0, p0, Lcom/instagram/cliffjumper/edit/photo/resize/ResizeFilter;->b:Z
return-void
.end method
.method private constructor <init>(Z)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Lcom/instagram/cliffjumper/edit/photo/resize/IdentityFilter;
invoke-direct {v0}, Lcom/instagram/cliffjumper/edit/photo/resize/IdentityFilter;-><init>()V
iput-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/resize/ResizeFilter;->c:Lcom/instagram/filterkit/filter/IgFilter;
new-instance v0, Lcom/instagram/cliffjumper/edit/photo/resize/LanczosFilter;
invoke-direct {v0}, Lcom/instagram/cliffjumper/edit/photo/resize/LanczosFilter;-><init>()V
iput-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/resize/ResizeFilter;->d:Lcom/instagram/filterkit/filter/IgFilter;
iput-boolean p1, p0, Lcom/instagram/cliffjumper/edit/photo/resize/ResizeFilter;->b:Z
return-void
.end method
.method synthetic constructor <init>(ZB)V
.registers 3
invoke-direct {p0, p1}, Lcom/instagram/cliffjumper/edit/photo/resize/ResizeFilter;-><init>(Z)V
return-void
.end method
.method private a(Ljava/lang/String;)V
.registers 5
invoke-static {}, Lcom/instagram/common/analytics/a;->a()Lcom/instagram/common/analytics/d;
move-result-object v0
new-instance v1, Lcom/instagram/common/analytics/b;
const-string v2, "resize"
invoke-direct {v1, v2, p0}, Lcom/instagram/common/analytics/b;-><init>(Ljava/lang/String;Lcom/instagram/common/analytics/e;)V
const-string v2, "type"
invoke-virtual {v1, v2, p1}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/instagram/common/analytics/b;
move-result-object v1
invoke-interface {v0, v1}, Lcom/instagram/common/analytics/d;->a(Lcom/instagram/common/analytics/b;)V
return-void
.end method
.method private b(Lcom/instagram/filterkit/d/c;Lcom/instagram/filterkit/e/a;Lcom/instagram/filterkit/e/c;)Lcom/instagram/filterkit/e/c;
.registers 10
const/4 v5, 0x0
const/4 v1, 0x1
const v4, 0x3ff33333
invoke-interface {p3}, Lcom/instagram/filterkit/e/c;->c()I
move-result v0
int-to-float v0, v0
mul-float/2addr v0, v4
float-to-int v0, v0
move v2, v0
move v0, v1
:goto_e
invoke-interface {p2}, Lcom/instagram/filterkit/e/a;->c()I
move-result v3
if-le v3, v2, :cond_4f
add-int/lit8 v0, v0, 0x1
int-to-float v2, v2
mul-float/2addr v2, v4
float-to-int v2, v2
goto :goto_e
:goto_1a
if-le v2, v1, :cond_36
invoke-interface {p2}, Lcom/instagram/filterkit/e/a;->c()I
move-result v0
int-to-float v0, v0
div-float/2addr v0, v4
float-to-int v0, v0
invoke-static {v0}, Lcom/instagram/filterkit/e/d;->b(I)Lcom/instagram/filterkit/e/c;
move-result-object v0
iget-object v3, p0, Lcom/instagram/cliffjumper/edit/photo/resize/ResizeFilter;->c:Lcom/instagram/filterkit/filter/IgFilter;
invoke-interface {v3, p1, p2, v0}, Lcom/instagram/filterkit/filter/IgFilter;->a(Lcom/instagram/filterkit/d/c;Lcom/instagram/filterkit/e/a;Lcom/instagram/filterkit/e/c;)Lcom/instagram/filterkit/e/c;
move-result-object v0
check-cast v0, Lcom/instagram/filterkit/e/b;
invoke-virtual {p1, p2, v5}, Lcom/instagram/filterkit/d/c;->a(Lcom/instagram/filterkit/e/g;Lcom/instagram/filterkit/d/e;)V
add-int/lit8 v2, v2, -0x1
move-object p2, v0
goto :goto_1a
:cond_36
invoke-static {p3}, Lcom/instagram/filterkit/e/d;->a(Lcom/instagram/filterkit/e/c;)Z
move-result v0
if-eqz v0, :cond_46
:goto_3c
iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/resize/ResizeFilter;->c:Lcom/instagram/filterkit/filter/IgFilter;
invoke-interface {v0, p1, p2, p3}, Lcom/instagram/filterkit/filter/IgFilter;->a(Lcom/instagram/filterkit/d/c;Lcom/instagram/filterkit/e/a;Lcom/instagram/filterkit/e/c;)Lcom/instagram/filterkit/e/c;
move-result-object v0
invoke-virtual {p1, p2, v5}, Lcom/instagram/filterkit/d/c;->a(Lcom/instagram/filterkit/e/g;Lcom/instagram/filterkit/d/e;)V
return-object v0
:cond_46
invoke-interface {p3}, Lcom/instagram/filterkit/e/c;->c()I
move-result v0
invoke-static {v0}, Lcom/instagram/filterkit/e/d;->b(I)Lcom/instagram/filterkit/e/c;
move-result-object p3
goto :goto_3c
:cond_4f
move v2, v0
goto :goto_1a
.end method
.method public final a(Lcom/instagram/filterkit/d/c;Lcom/instagram/filterkit/e/a;Lcom/instagram/filterkit/e/c;)Lcom/instagram/filterkit/e/c;
.registers 7
const/4 v2, 0x0
iget-boolean v0, p0, Lcom/instagram/cliffjumper/edit/photo/resize/ResizeFilter;->b:Z
if-nez v0, :cond_f
const-string v0, "identity_preference"
invoke-direct {p0, v0}, Lcom/instagram/cliffjumper/edit/photo/resize/ResizeFilter;->a(Ljava/lang/String;)V
invoke-direct {p0, p1, p2, p3}, Lcom/instagram/cliffjumper/edit/photo/resize/ResizeFilter;->b(Lcom/instagram/filterkit/d/c;Lcom/instagram/filterkit/e/a;Lcom/instagram/filterkit/e/c;)Lcom/instagram/filterkit/e/c;
move-result-object v0
:goto_e
return-object v0
:cond_f
iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/resize/ResizeFilter;->d:Lcom/instagram/filterkit/filter/IgFilter;
invoke-interface {v0, p1, p2, p3}, Lcom/instagram/filterkit/filter/IgFilter;->a(Lcom/instagram/filterkit/d/c;Lcom/instagram/filterkit/e/a;Lcom/instagram/filterkit/e/c;)Lcom/instagram/filterkit/e/c;
move-result-object v0
if-eqz v0, :cond_1d
const-string v1, "advanced"
invoke-direct {p0, v1}, Lcom/instagram/cliffjumper/edit/photo/resize/ResizeFilter;->a(Ljava/lang/String;)V
goto :goto_e
:cond_1d
sget-object v0, Lcom/instagram/cliffjumper/edit/photo/resize/ResizeFilter;->a:Ljava/lang/Class;
const-string v1, "Advanced resize failed"
invoke-static {v0, v1}, Lcom/facebook/e/a/a;->a(Ljava/lang/Class;Ljava/lang/String;)V
iput-boolean v2, p0, Lcom/instagram/cliffjumper/edit/photo/resize/ResizeFilter;->b:Z
iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/resize/ResizeFilter;->d:Lcom/instagram/filterkit/filter/IgFilter;
invoke-interface {v0, p1}, Lcom/instagram/filterkit/filter/IgFilter;->a(Lcom/instagram/filterkit/d/c;)V
invoke-static {}, Lcom/instagram/k/a/b;->a()Lcom/instagram/k/a/b;
move-result-object v0
invoke-virtual {v0, v2}, Lcom/instagram/k/a/b;->d(Z)Z
const-string v0, "identity_fallback"
invoke-direct {p0, v0}, Lcom/instagram/cliffjumper/edit/photo/resize/ResizeFilter;->a(Ljava/lang/String;)V
invoke-direct {p0, p1, p2, p3}, Lcom/instagram/cliffjumper/edit/photo/resize/ResizeFilter;->b(Lcom/instagram/filterkit/d/c;Lcom/instagram/filterkit/e/a;Lcom/instagram/filterkit/e/c;)Lcom/instagram/filterkit/e/c;
move-result-object v0
goto :goto_e
.end method
.method public final a(Lcom/instagram/filterkit/d/c;)V
.registers 2
return-void
.end method
.method public final a(Z)V
.registers 3
iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/resize/ResizeFilter;->d:Lcom/instagram/filterkit/filter/IgFilter;
invoke-interface {v0, p1}, Lcom/instagram/filterkit/filter/IgFilter;->a(Z)V
iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/resize/ResizeFilter;->c:Lcom/instagram/filterkit/filter/IgFilter;
invoke-interface {v0, p1}, Lcom/instagram/filterkit/filter/IgFilter;->a(Z)V
return-void
.end method
.method public final a_(Lcom/instagram/filterkit/d/c;)V
.registers 3
iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/resize/ResizeFilter;->d:Lcom/instagram/filterkit/filter/IgFilter;
invoke-interface {v0, p1}, Lcom/instagram/filterkit/filter/IgFilter;->a_(Lcom/instagram/filterkit/d/c;)V
iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/resize/ResizeFilter;->c:Lcom/instagram/filterkit/filter/IgFilter;
invoke-interface {v0, p1}, Lcom/instagram/filterkit/filter/IgFilter;->a_(Lcom/instagram/filterkit/d/c;)V
return-void
.end method
.method public final c()Lcom/instagram/filterkit/e/b;
.registers 2
iget-boolean v0, p0, Lcom/instagram/cliffjumper/edit/photo/resize/ResizeFilter;->b:Z
if-eqz v0, :cond_b
iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/resize/ResizeFilter;->d:Lcom/instagram/filterkit/filter/IgFilter;
invoke-interface {v0}, Lcom/instagram/filterkit/filter/IgFilter;->c()Lcom/instagram/filterkit/e/b;
move-result-object v0
:goto_a
return-object v0
:cond_b
iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/resize/ResizeFilter;->c:Lcom/instagram/filterkit/filter/IgFilter;
invoke-interface {v0}, Lcom/instagram/filterkit/filter/IgFilter;->c()Lcom/instagram/filterkit/e/b;
move-result-object v0
goto :goto_a
.end method
.method public final d()Z
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public describeContents()I
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public final i_()Ljava/lang/String;
.registers 2
const-string v0, "ig_filter"
return-object v0
.end method
.method public final w_()V
.registers 2
iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/resize/ResizeFilter;->d:Lcom/instagram/filterkit/filter/IgFilter;
invoke-interface {v0}, Lcom/instagram/filterkit/filter/IgFilter;->w_()V
iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/resize/ResizeFilter;->c:Lcom/instagram/filterkit/filter/IgFilter;
invoke-interface {v0}, Lcom/instagram/filterkit/filter/IgFilter;->w_()V
return-void
.end method
.method public writeToParcel(Landroid/os/Parcel;I)V
.registers 4
iget-boolean v0, p0, Lcom/instagram/cliffjumper/edit/photo/resize/ResizeFilter;->b:Z
if-eqz v0, :cond_9
const/4 v0, 0x1
:goto_5
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V
return-void
:cond_9
const/4 v0, 0x0
goto :goto_5
.end method
.method public final y_()Z
.registers 2
iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/resize/ResizeFilter;->c:Lcom/instagram/filterkit/filter/IgFilter;
invoke-interface {v0}, Lcom/instagram/filterkit/filter/IgFilter;->y_()Z
move-result v0
return v0
.end method
.method public final z_()Z
.registers 2
iget-boolean v0, p0, Lcom/instagram/cliffjumper/edit/photo/resize/ResizeFilter;->b:Z
if-eqz v0, :cond_b
iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/resize/ResizeFilter;->d:Lcom/instagram/filterkit/filter/IgFilter;
invoke-interface {v0}, Lcom/instagram/filterkit/filter/IgFilter;->z_()Z
move-result v0
:goto_a
return v0
:cond_b
iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/resize/ResizeFilter;->c:Lcom/instagram/filterkit/filter/IgFilter;
invoke-interface {v0}, Lcom/instagram/filterkit/filter/IgFilter;->z_()Z
move-result v0
goto :goto_a
.end method