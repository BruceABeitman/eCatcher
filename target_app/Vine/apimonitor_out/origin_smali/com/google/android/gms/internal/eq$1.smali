.class Lcom/google/android/gms/internal/eq$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/eq;->showDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic sq:Ljava/lang/String;

.field final synthetic sr:Lcom/google/android/gms/internal/eq;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/eq;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/internal/eq$1;->sr:Lcom/google/android/gms/internal/eq;

    iput-object p2, p0, Lcom/google/android/gms/internal/eq$1;->sq:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 7

    iget-object v0, p0, Lcom/google/android/gms/internal/eq$1;->sr:Lcom/google/android/gms/internal/eq;

    invoke-static {v0}, Lcom/google/android/gms/internal/eq;->a(Lcom/google/android/gms/internal/eq;)Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.SEND"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "text/plain"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "android.intent.extra.TEXT"

    iget-object v3, p0, Lcom/google/android/gms/internal/eq$1;->sq:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "Share via"

    invoke-static {v1, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
