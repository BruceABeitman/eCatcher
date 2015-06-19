.class final Lcom/bbm/ui/b/t;
.super Ljava/lang/Object;
.source "FirstTimeSetAvatarDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/bbm/ui/b/s;


# direct methods
.method constructor <init>(Lcom/bbm/ui/b/s;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/ui/b/t;->a:Lcom/bbm/ui/b/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 7

    iget-object v0, p0, Lcom/bbm/ui/b/t;->a:Lcom/bbm/ui/b/s;

    invoke-static {v0}, Lcom/bbm/ui/b/s;->a(Lcom/bbm/ui/b/s;)Lcom/bbm/ui/activities/MainActivity;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/bbm/ui/activities/MainActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v2

    iput-object v2, v0, Lcom/bbm/ui/activities/MainActivity;->d:Landroid/net/Uri;

    const-string v2, "output"

    iget-object v3, v0, Lcom/bbm/ui/activities/MainActivity;->d:Landroid/net/Uri;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/16 v2, 0x15

    invoke-virtual {v0, v1, v2}, Lcom/bbm/ui/activities/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
