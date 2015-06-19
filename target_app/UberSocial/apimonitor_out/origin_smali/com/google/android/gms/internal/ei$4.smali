.class final Lcom/google/android/gms/internal/ei$4;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/ei;->a(Landroid/content/Context;Landroid/app/AlertDialog$Builder;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)V
.end annotation


# instance fields
.field final synthetic a:Landroid/webkit/JsPromptResult;


# direct methods
.method constructor <init>(Landroid/webkit/JsPromptResult;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ei$4;->a:Landroid/webkit/JsPromptResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ei$4;->a:Landroid/webkit/JsPromptResult;

    invoke-virtual {v0}, Landroid/webkit/JsPromptResult;->cancel()V

    return-void
.end method
