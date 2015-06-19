.class Lcom/twidroid/activity/PluginTakePhoto$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/twidroid/activity/PluginTakePhoto;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation


# instance fields
.field final synthetic a:Lcom/twidroid/activity/PluginTakePhoto;


# direct methods
.method constructor <init>(Lcom/twidroid/activity/PluginTakePhoto;)V
    .registers 2

    iput-object p1, p0, Lcom/twidroid/activity/PluginTakePhoto$1;->a:Lcom/twidroid/activity/PluginTakePhoto;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4

    iget-object v0, p0, Lcom/twidroid/activity/PluginTakePhoto$1;->a:Lcom/twidroid/activity/PluginTakePhoto;

    invoke-virtual {v0}, Lcom/twidroid/activity/PluginTakePhoto;->finish()V

    return-void
.end method
