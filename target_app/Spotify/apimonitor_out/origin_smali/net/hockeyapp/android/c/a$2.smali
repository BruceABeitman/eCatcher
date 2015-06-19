.class final Lnet/hockeyapp/android/c/a$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/hockeyapp/android/c/a;
.end annotation


# instance fields
.field final synthetic a:Lorg/json/JSONArray;

.field final synthetic b:Lnet/hockeyapp/android/c/a;


# direct methods
.method constructor <init>(Lnet/hockeyapp/android/c/a;Lorg/json/JSONArray;)V
    .registers 3

    iput-object p1, p0, Lnet/hockeyapp/android/c/a$2;->b:Lnet/hockeyapp/android/c/a;

    iput-object p2, p0, Lnet/hockeyapp/android/c/a$2;->a:Lorg/json/JSONArray;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 6

    iget-object v0, p0, Lnet/hockeyapp/android/c/a$2;->b:Lnet/hockeyapp/android/c/a;

    iget-object v0, p0, Lnet/hockeyapp/android/c/a$2;->b:Lnet/hockeyapp/android/c/a;

    invoke-static {v0}, Lnet/hockeyapp/android/c/a;->b(Lnet/hockeyapp/android/c/a;)Landroid/app/Activity;

    move-result-object v0

    const-string v1, "[]"

    invoke-static {v0, v1}, Lnet/hockeyapp/android/d/h;->a(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/ref/WeakReference;

    iget-object v1, p0, Lnet/hockeyapp/android/c/a$2;->b:Lnet/hockeyapp/android/c/a;

    invoke-static {v1}, Lnet/hockeyapp/android/c/a;->b(Lnet/hockeyapp/android/c/a;)Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-static {}, Lnet/hockeyapp/android/h;->a()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_34

    invoke-static {v0}, Lnet/hockeyapp/android/h;->a(Ljava/lang/ref/WeakReference;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_34

    iget-object v0, p0, Lnet/hockeyapp/android/c/a$2;->b:Lnet/hockeyapp/android/c/a;

    iget-object v1, p0, Lnet/hockeyapp/android/c/a$2;->a:Lorg/json/JSONArray;

    invoke-static {v0, v1}, Lnet/hockeyapp/android/c/a;->a(Lnet/hockeyapp/android/c/a;Lorg/json/JSONArray;)V

    :goto_33
    return-void

    :cond_34
    iget-object v0, p0, Lnet/hockeyapp/android/c/a$2;->b:Lnet/hockeyapp/android/c/a;

    iget-object v1, p0, Lnet/hockeyapp/android/c/a$2;->a:Lorg/json/JSONArray;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lnet/hockeyapp/android/c/a;->a(Lnet/hockeyapp/android/c/a;Lorg/json/JSONArray;Ljava/lang/Boolean;)V

    goto :goto_33
.end method
