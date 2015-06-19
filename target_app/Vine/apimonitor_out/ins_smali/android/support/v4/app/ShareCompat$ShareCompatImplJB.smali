.class  Landroid/support/v4/app/ShareCompat$ShareCompatImplJB;
.super Landroid/support/v4/app/ShareCompat$ShareCompatImplICS;
.source "ShareCompat.java"
.method constructor <init>()V
.registers 1
invoke-direct {p0}, Landroid/support/v4/app/ShareCompat$ShareCompatImplICS;-><init>()V
return-void
.end method
.method public escapeHtml(Ljava/lang/CharSequence;)Ljava/lang/String;
.registers 3
invoke-static {p1}, Landroid/support/v4/app/ShareCompatJB;->escapeHtml(Ljava/lang/CharSequence;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method  shouldAddChooserIntent(Landroid/view/MenuItem;)Z
.registers 3
const/4 v0, 0x0
return v0
.end method