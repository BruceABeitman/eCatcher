.class public final Lcom/instagram/cliffjumper/edit/photo/a/ad;
.super Ljava/lang/Object;
.source "ToolsListUtil.java"
.method public static a(Landroid/content/res/Resources;F)[Lcom/instagram/cliffjumper/edit/common/ui/c;
.registers 7
new-instance v0, Lcom/instagram/cliffjumper/edit/photo/straightening/a;
invoke-direct {v0, p0, p1}, Lcom/instagram/cliffjumper/edit/photo/straightening/a;-><init>(Landroid/content/res/Resources;F)V
new-instance v1, Lcom/instagram/cliffjumper/edit/common/filters/b;
invoke-direct {v1}, Lcom/instagram/cliffjumper/edit/common/filters/b;-><init>()V
const/16 v2, 0xa
new-array v2, v2, [Lcom/instagram/cliffjumper/edit/common/ui/c;
const/4 v3, 0x0
new-instance v4, Lcom/instagram/cliffjumper/edit/photo/straightening/f;
invoke-direct {v4, p0, v0}, Lcom/instagram/cliffjumper/edit/photo/straightening/f;-><init>(Landroid/content/res/Resources;Lcom/instagram/cliffjumper/edit/common/ui/a;)V
aput-object v4, v2, v3
const/4 v0, 0x1
new-instance v3, Lcom/instagram/cliffjumper/edit/common/filters/f;
sget-object v4, Lcom/instagram/cliffjumper/edit/common/filters/a;->a:Lcom/instagram/cliffjumper/edit/common/filters/a;
invoke-direct {v3, p0, v4, v1}, Lcom/instagram/cliffjumper/edit/common/filters/f;-><init>(Landroid/content/res/Resources;Lcom/instagram/cliffjumper/edit/common/filters/a;Lcom/instagram/cliffjumper/edit/common/ui/a;)V
aput-object v3, v2, v0
const/4 v0, 0x2
new-instance v3, Lcom/instagram/cliffjumper/edit/common/filters/f;
sget-object v4, Lcom/instagram/cliffjumper/edit/common/filters/a;->b:Lcom/instagram/cliffjumper/edit/common/filters/a;
invoke-direct {v3, p0, v4, v1}, Lcom/instagram/cliffjumper/edit/common/filters/f;-><init>(Landroid/content/res/Resources;Lcom/instagram/cliffjumper/edit/common/filters/a;Lcom/instagram/cliffjumper/edit/common/ui/a;)V
aput-object v3, v2, v0
const/4 v0, 0x3
new-instance v3, Lcom/instagram/cliffjumper/edit/common/filters/f;
sget-object v4, Lcom/instagram/cliffjumper/edit/common/filters/a;->d:Lcom/instagram/cliffjumper/edit/common/filters/a;
invoke-direct {v3, p0, v4, v1}, Lcom/instagram/cliffjumper/edit/common/filters/f;-><init>(Landroid/content/res/Resources;Lcom/instagram/cliffjumper/edit/common/filters/a;Lcom/instagram/cliffjumper/edit/common/ui/a;)V
aput-object v3, v2, v0
const/4 v0, 0x4
new-instance v3, Lcom/instagram/cliffjumper/edit/common/filters/f;
sget-object v4, Lcom/instagram/cliffjumper/edit/common/filters/a;->c:Lcom/instagram/cliffjumper/edit/common/filters/a;
invoke-direct {v3, p0, v4, v1}, Lcom/instagram/cliffjumper/edit/common/filters/f;-><init>(Landroid/content/res/Resources;Lcom/instagram/cliffjumper/edit/common/filters/a;Lcom/instagram/cliffjumper/edit/common/ui/a;)V
aput-object v3, v2, v0
const/4 v0, 0x5
new-instance v3, Lcom/instagram/cliffjumper/edit/common/filters/f;
sget-object v4, Lcom/instagram/cliffjumper/edit/common/filters/a;->h:Lcom/instagram/cliffjumper/edit/common/filters/a;
invoke-direct {v3, p0, v4, v1}, Lcom/instagram/cliffjumper/edit/common/filters/f;-><init>(Landroid/content/res/Resources;Lcom/instagram/cliffjumper/edit/common/filters/a;Lcom/instagram/cliffjumper/edit/common/ui/a;)V
aput-object v3, v2, v0
const/4 v0, 0x6
new-instance v3, Lcom/instagram/cliffjumper/edit/common/filters/f;
sget-object v4, Lcom/instagram/cliffjumper/edit/common/filters/a;->g:Lcom/instagram/cliffjumper/edit/common/filters/a;
invoke-direct {v3, p0, v4, v1}, Lcom/instagram/cliffjumper/edit/common/filters/f;-><init>(Landroid/content/res/Resources;Lcom/instagram/cliffjumper/edit/common/filters/a;Lcom/instagram/cliffjumper/edit/common/ui/a;)V
aput-object v3, v2, v0
const/4 v0, 0x7
new-instance v3, Lcom/instagram/cliffjumper/edit/common/filters/f;
sget-object v4, Lcom/instagram/cliffjumper/edit/common/filters/a;->e:Lcom/instagram/cliffjumper/edit/common/filters/a;
invoke-direct {v3, p0, v4, v1}, Lcom/instagram/cliffjumper/edit/common/filters/f;-><init>(Landroid/content/res/Resources;Lcom/instagram/cliffjumper/edit/common/filters/a;Lcom/instagram/cliffjumper/edit/common/ui/a;)V
aput-object v3, v2, v0
const/16 v0, 0x8
new-instance v3, Lcom/instagram/cliffjumper/edit/photo/tiltshift/k;
invoke-direct {v3, p0}, Lcom/instagram/cliffjumper/edit/photo/tiltshift/k;-><init>(Landroid/content/res/Resources;)V
aput-object v3, v2, v0
const/16 v0, 0x9
new-instance v3, Lcom/instagram/cliffjumper/edit/common/filters/f;
sget-object v4, Lcom/instagram/cliffjumper/edit/common/filters/a;->f:Lcom/instagram/cliffjumper/edit/common/filters/a;
invoke-direct {v3, p0, v4, v1}, Lcom/instagram/cliffjumper/edit/common/filters/f;-><init>(Landroid/content/res/Resources;Lcom/instagram/cliffjumper/edit/common/filters/a;Lcom/instagram/cliffjumper/edit/common/ui/a;)V
aput-object v3, v2, v0
return-object v2
.end method