.class public final Lcom/spotify/mobile/android/ui/page/a/a;
.super Lcom/spotify/mobile/android/ui/page/a/j;
.source "SourceFile"
.field private b:Lcom/spotify/mobile/android/ui/actions/d;
.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/spotify/mobile/android/ui/page/a/c;)V
.registers 6
const v0, 0x7f0f02d2
invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v0
invoke-direct {p0, p1, p2, v0}, Lcom/spotify/mobile/android/ui/page/a/j;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/lang/String;)V
const-class v0, Lcom/spotify/mobile/android/ui/actions/d;
invoke-static {v0}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;)Lcom/spotify/mobile/android/c/a;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/ui/actions/d;
iput-object v0, p0, Lcom/spotify/mobile/android/ui/page/a/a;->b:Lcom/spotify/mobile/android/ui/actions/d;
invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/page/a/a;->e()Landroid/view/View;
move-result-object v0
new-instance v1, Lcom/spotify/mobile/android/ui/page/a/a$1;
invoke-direct {v1, p0, p3}, Lcom/spotify/mobile/android/ui/page/a/a$1;-><init>(Lcom/spotify/mobile/android/ui/page/a/a;Lcom/spotify/mobile/android/ui/page/a/c;)V
invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
return-void
.end method
.method static synthetic a(Lcom/spotify/mobile/android/ui/page/a/a;)Lcom/spotify/mobile/android/ui/actions/d;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/ui/page/a/a;->b:Lcom/spotify/mobile/android/ui/actions/d;
return-object v0
.end method