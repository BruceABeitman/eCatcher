.class public abstract Lcom/instagram/ui/b/a;
.super Landroid/support/v4/app/ac;
.source "IgFragmentPagerAdapter.java"
.field private final a:Landroid/support/v4/app/s;
.field private b:Landroid/view/ViewGroup;
.method public constructor <init>(Landroid/support/v4/app/s;)V
.registers 2
invoke-direct {p0, p1}, Landroid/support/v4/app/ac;-><init>(Landroid/support/v4/app/s;)V
iput-object p1, p0, Lcom/instagram/ui/b/a;->a:Landroid/support/v4/app/s;
return-void
.end method
.method private static a(IJ)Ljava/lang/String;
.registers 5
new-instance v0, Ljava/lang/StringBuilder;
const-string v1, "android:switcher:"
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ":"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public final a(I)Landroid/support/v4/app/Fragment;
.registers 6
iget-object v0, p0, Lcom/instagram/ui/b/a;->a:Landroid/support/v4/app/s;
iget-object v1, p0, Lcom/instagram/ui/b/a;->b:Landroid/view/ViewGroup;
invoke-virtual {v1}, Landroid/view/ViewGroup;->getId()I
move-result v1
invoke-static {p1}, Lcom/instagram/ui/b/a;->b(I)J
move-result-wide v2
invoke-static {v1, v2, v3}, Lcom/instagram/ui/b/a;->a(IJ)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/support/v4/app/s;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;
move-result-object v0
if-eqz v0, :cond_17
:goto_16
return-object v0
:cond_17
invoke-virtual {p0, p1}, Lcom/instagram/ui/b/a;->c(I)Landroid/support/v4/app/Fragment;
move-result-object v0
goto :goto_16
.end method
.method public final a(Landroid/view/ViewGroup;)V
.registers 2
iput-object p1, p0, Lcom/instagram/ui/b/a;->b:Landroid/view/ViewGroup;
return-void
.end method
.method public abstract c(I)Landroid/support/v4/app/Fragment;
.end method