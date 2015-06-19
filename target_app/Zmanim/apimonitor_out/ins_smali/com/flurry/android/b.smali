.class final Lcom/flurry/android/b;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Ljava/lang/Runnable;
.field private synthetic a:Landroid/content/Context;
.field private synthetic b:Lcom/flurry/android/FlurryAgent;
.method constructor <init>(Lcom/flurry/android/FlurryAgent;Landroid/content/Context;)V
.registers 3
iput-object p1, p0, Lcom/flurry/android/b;->b:Lcom/flurry/android/FlurryAgent;
iput-object p2, p0, Lcom/flurry/android/b;->a:Landroid/content/Context;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final run()V
.registers 3
iget-object v0, p0, Lcom/flurry/android/b;->b:Lcom/flurry/android/FlurryAgent;
iget-object v1, p0, Lcom/flurry/android/b;->a:Landroid/content/Context;
invoke-static {v0, v1}, Lcom/flurry/android/FlurryAgent;->a(Lcom/flurry/android/FlurryAgent;Landroid/content/Context;)V
return-void
.end method