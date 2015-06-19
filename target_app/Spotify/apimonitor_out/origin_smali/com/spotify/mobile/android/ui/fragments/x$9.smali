.class final Lcom/spotify/mobile/android/ui/fragments/x$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spotify/mobile/android/ui/fragments/x;
.end annotation


# instance fields
.field final synthetic a:Landroid/webkit/JsResult;

.field final synthetic b:Lcom/spotify/mobile/android/ui/fragments/x;


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/ui/fragments/x;Landroid/webkit/JsResult;)V
    .registers 3

    iput-object p1, p0, Lcom/spotify/mobile/android/ui/fragments/x$9;->b:Lcom/spotify/mobile/android/ui/fragments/x;

    iput-object p2, p0, Lcom/spotify/mobile/android/ui/fragments/x$9;->a:Landroid/webkit/JsResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 4

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/x$9;->a:Landroid/webkit/JsResult;

    invoke-virtual {v0}, Landroid/webkit/JsResult;->confirm()V

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/x$9;->b:Lcom/spotify/mobile/android/ui/fragments/x;

    invoke-static {v0}, Lcom/spotify/mobile/android/ui/fragments/x;->j(Lcom/spotify/mobile/android/ui/fragments/x;)Landroid/app/AlertDialog;

    return-void
.end method
