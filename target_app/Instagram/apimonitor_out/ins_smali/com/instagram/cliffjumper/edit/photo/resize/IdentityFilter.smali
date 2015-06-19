.class public Lcom/instagram/cliffjumper/edit/photo/resize/IdentityFilter;
.super Lcom/instagram/cliffjumper/edit/common/basefilter/BaseSimpleFilter;
.source "IdentityFilter.java"
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
.method static constructor <clinit>()V
.registers 1
new-instance v0, Lcom/instagram/cliffjumper/edit/photo/resize/b;
invoke-direct {v0}, Lcom/instagram/cliffjumper/edit/photo/resize/b;-><init>()V
sput-object v0, Lcom/instagram/cliffjumper/edit/photo/resize/IdentityFilter;->CREATOR:Landroid/os/Parcelable$Creator;
return-void
.end method
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Lcom/instagram/cliffjumper/edit/common/basefilter/BaseSimpleFilter;-><init>()V
return-void
.end method
.method private constructor <init>(Landroid/os/Parcel;)V
.registers 2
invoke-direct {p0, p1}, Lcom/instagram/cliffjumper/edit/common/basefilter/BaseSimpleFilter;-><init>(Landroid/os/Parcel;)V
return-void
.end method
.method synthetic constructor <init>(Landroid/os/Parcel;B)V
.registers 3
invoke-direct {p0, p1}, Lcom/instagram/cliffjumper/edit/photo/resize/IdentityFilter;-><init>(Landroid/os/Parcel;)V
return-void
.end method
.method protected final a(Lcom/instagram/filterkit/b/b;Lcom/instagram/filterkit/e/a;Lcom/instagram/filterkit/e/c;)V
.registers 6
const-string v0, "image"
invoke-interface {p2}, Lcom/instagram/filterkit/e/a;->b()I
move-result v1
invoke-virtual {p1, v0, v1}, Lcom/instagram/filterkit/b/b;->a(Ljava/lang/String;I)V
return-void
.end method
.method protected final b(Lcom/instagram/filterkit/d/c;)Lcom/instagram/filterkit/b/b;
.registers 4
const-string v0, "Identity"
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