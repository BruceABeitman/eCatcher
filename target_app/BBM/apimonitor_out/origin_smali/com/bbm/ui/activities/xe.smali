.class final Lcom/bbm/ui/activities/xe;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field final synthetic a:Lcom/bbm/ui/activities/MainActivity;


# direct methods
.method constructor <init>(Lcom/bbm/ui/activities/MainActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/ui/activities/xe;->a:Lcom/bbm/ui/activities/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .registers 4

    iget-object v0, p0, Lcom/bbm/ui/activities/xe;->a:Lcom/bbm/ui/activities/MainActivity;

    invoke-static {}, Lcom/google/b/a/l;->d()Lcom/google/b/a/l;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bbm/ui/activities/MainActivity;->a(Lcom/bbm/ui/activities/MainActivity;Lcom/google/b/a/l;)Lcom/google/b/a/l;

    return-void
.end method
