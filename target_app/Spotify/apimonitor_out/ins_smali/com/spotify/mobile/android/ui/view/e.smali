.class public final Lcom/spotify/mobile/android/ui/view/e;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Lcom/spotify/mobile/android/ui/view/l;
.field private a:Landroid/view/View;
.field private b:Landroid/content/Context;
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const-string v0, "Don\'t pass null context to constructor"
invoke-static {p1, v0}, Lcom/spotify/mobile/android/util/Assertion;->a(Ljava/lang/Object;Ljava/lang/String;)V
const-string v0, "Don\'t pass null views to constructor"
invoke-static {p2, v0}, Lcom/spotify/mobile/android/util/Assertion;->a(Ljava/lang/Object;Ljava/lang/String;)V
iput-object p1, p0, Lcom/spotify/mobile/android/ui/view/e;->b:Landroid/content/Context;
iput-object p2, p0, Lcom/spotify/mobile/android/ui/view/e;->a:Landroid/view/View;
return-void
.end method
.method public final a()V
.registers 3
iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/e;->a:Landroid/view/View;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
return-void
.end method
.method public final b()J
.registers 3
iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/e;->b:Landroid/content/Context;
invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v0
const v1, 0x7f0d000d
invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I
move-result v0
int-to-long v0, v0
return-wide v0
.end method
.method public final equals(Ljava/lang/Object;)Z
.registers 5
const/4 v0, 0x0
if-eqz p1, :cond_10
instance-of v1, p1, Lcom/spotify/mobile/android/ui/view/e;
if-eqz v1, :cond_10
check-cast p1, Lcom/spotify/mobile/android/ui/view/e;
iget-object v1, p1, Lcom/spotify/mobile/android/ui/view/e;->a:Landroid/view/View;
iget-object v2, p0, Lcom/spotify/mobile/android/ui/view/e;->a:Landroid/view/View;
if-ne v1, v2, :cond_10
const/4 v0, 0x1
:cond_10
return v0
.end method
.method public final hashCode()I
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/e;->a:Landroid/view/View;
invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I
move-result v0
return v0
.end method