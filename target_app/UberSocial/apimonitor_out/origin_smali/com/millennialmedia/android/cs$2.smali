.class Lcom/millennialmedia/android/cs$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/android/cs;->onGeolocationPermissionsShowPrompt(Ljava/lang/String;Landroid/webkit/GeolocationPermissions$Callback;)V
.end annotation


# instance fields
.field final synthetic a:Landroid/webkit/GeolocationPermissions$Callback;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/millennialmedia/android/cs;


# direct methods
.method constructor <init>(Lcom/millennialmedia/android/cs;Landroid/webkit/GeolocationPermissions$Callback;Ljava/lang/String;)V
    .registers 4

    iput-object p1, p0, Lcom/millennialmedia/android/cs$2;->c:Lcom/millennialmedia/android/cs;

    iput-object p2, p0, Lcom/millennialmedia/android/cs$2;->a:Landroid/webkit/GeolocationPermissions$Callback;

    iput-object p3, p0, Lcom/millennialmedia/android/cs$2;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/millennialmedia/android/cs$2;->c:Lcom/millennialmedia/android/cs;

    invoke-static {v0, v2}, Lcom/millennialmedia/android/cs;->a(Lcom/millennialmedia/android/cs;Z)V

    iget-object v0, p0, Lcom/millennialmedia/android/cs$2;->a:Landroid/webkit/GeolocationPermissions$Callback;

    iget-object v1, p0, Lcom/millennialmedia/android/cs$2;->b:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v2}, Landroid/webkit/GeolocationPermissions$Callback;->invoke(Ljava/lang/String;ZZ)V

    return-void
.end method
