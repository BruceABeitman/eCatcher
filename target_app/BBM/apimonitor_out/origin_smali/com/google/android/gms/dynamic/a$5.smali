.class final Lcom/google/android/gms/dynamic/a$5;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic FA:I

.field final synthetic os:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;I)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/dynamic/a$5;->os:Landroid/content/Context;

    iput p2, p0, Lcom/google/android/gms/dynamic/a$5;->FA:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 6

    iget-object v0, p0, Lcom/google/android/gms/dynamic/a$5;->os:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/dynamic/a$5;->os:Landroid/content/Context;

    iget v2, p0, Lcom/google/android/gms/dynamic/a$5;->FA:I

    const/4 v3, -0x1

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->a(Landroid/content/Context;II)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
