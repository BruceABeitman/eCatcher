.class final Lcom/bbm/ui/activities/ww;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field final synthetic a:Lcom/bbm/ui/activities/wv;


# direct methods
.method constructor <init>(Lcom/bbm/ui/activities/wv;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/ui/activities/ww;->a:Lcom/bbm/ui/activities/wv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .registers 3

    iget-object v0, p0, Lcom/bbm/ui/activities/ww;->a:Lcom/bbm/ui/activities/wv;

    iget-object v0, v0, Lcom/bbm/ui/activities/wv;->a:Lcom/bbm/ui/activities/MainActivity;

    invoke-static {v0}, Lcom/bbm/util/fb;->b(Landroid/app/Activity;)V

    return-void
.end method
