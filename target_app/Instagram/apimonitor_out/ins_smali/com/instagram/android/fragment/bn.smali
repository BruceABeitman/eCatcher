.class final Lcom/instagram/android/fragment/bn;
.super Ljava/lang/Object;
.source "FindFacebookFriendsPromptFragment.java"
.implements Lcom/facebook/b/e;
.field final synthetic a:Lcom/instagram/android/fragment/bh;
.method private constructor <init>(Lcom/instagram/android/fragment/bh;)V
.registers 2
iput-object p1, p0, Lcom/instagram/android/fragment/bn;->a:Lcom/instagram/android/fragment/bh;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method synthetic constructor <init>(Lcom/instagram/android/fragment/bh;B)V
.registers 3
invoke-direct {p0, p1}, Lcom/instagram/android/fragment/bn;-><init>(Lcom/instagram/android/fragment/bh;)V
return-void
.end method
.method public final a()V
.registers 1
return-void
.end method
.method public final a(Landroid/os/Bundle;)V
.registers 4
invoke-static {}, Lcom/instagram/share/b/a;->b()V
iget-object v0, p0, Lcom/instagram/android/fragment/bn;->a:Lcom/instagram/android/fragment/bh;
invoke-static {}, Lcom/instagram/share/b/a;->a()Lcom/facebook/b/b;
move-result-object v1
invoke-virtual {v1}, Lcom/facebook/b/b;->c()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/instagram/android/fragment/bh;->a(Lcom/instagram/android/fragment/bh;Ljava/lang/String;)V
return-void
.end method
.method public final a(Lcom/facebook/b/a;)V
.registers 2
return-void
.end method
.method public final a(Lcom/facebook/b/i;)V
.registers 2
return-void
.end method