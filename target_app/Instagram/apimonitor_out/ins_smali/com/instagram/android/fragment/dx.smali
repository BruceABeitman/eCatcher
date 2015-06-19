.class final Lcom/instagram/android/fragment/dx;
.super Landroid/os/Handler;
.source "RecommendedUserFragment.java"
.field final synthetic a:Lcom/instagram/android/fragment/dr;
.method private constructor <init>(Lcom/instagram/android/fragment/dr;)V
.registers 2
iput-object p1, p0, Lcom/instagram/android/fragment/dx;->a:Lcom/instagram/android/fragment/dr;
invoke-direct {p0}, Landroid/os/Handler;-><init>()V
return-void
.end method
.method synthetic constructor <init>(Lcom/instagram/android/fragment/dr;B)V
.registers 3
invoke-direct {p0, p1}, Lcom/instagram/android/fragment/dx;-><init>(Lcom/instagram/android/fragment/dr;)V
return-void
.end method
.method public final handleMessage(Landroid/os/Message;)V
.registers 3
iget-object v0, p0, Lcom/instagram/android/fragment/dx;->a:Lcom/instagram/android/fragment/dr;
invoke-static {v0}, Lcom/instagram/android/fragment/dr;->a(Lcom/instagram/android/fragment/dr;)Lcom/instagram/android/a/m;
move-result-object v0
invoke-virtual {v0}, Lcom/instagram/android/a/m;->notifyDataSetChanged()V
return-void
.end method