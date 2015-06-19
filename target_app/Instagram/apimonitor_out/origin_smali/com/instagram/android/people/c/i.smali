.class final Lcom/instagram/android/people/c/i;
.super Ljava/lang/Object;
.source "ModifyPhotosOfYouHelper.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Landroid/app/Dialog;

.field final synthetic b:Lcom/instagram/feed/d/l;

.field final synthetic c:Lcom/instagram/android/people/c/a;


# direct methods
.method constructor <init>(Lcom/instagram/android/people/c/a;Landroid/app/Dialog;Lcom/instagram/feed/d/l;)V
    .registers 4

    iput-object p1, p0, Lcom/instagram/android/people/c/i;->c:Lcom/instagram/android/people/c/a;

    iput-object p2, p0, Lcom/instagram/android/people/c/i;->a:Landroid/app/Dialog;

    iput-object p3, p0, Lcom/instagram/android/people/c/i;->b:Lcom/instagram/feed/d/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Lcom/instagram/android/people/c/i;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    iget-object v0, p0, Lcom/instagram/android/people/c/i;->c:Lcom/instagram/android/people/c/a;

    invoke-static {v0}, Lcom/instagram/android/people/c/a;->f(Lcom/instagram/android/people/c/a;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/people/c/i;->b:Lcom/instagram/feed/d/l;

    invoke-static {v0, v1}, Lcom/instagram/android/util/ReportMediaUtil;->a(Landroid/content/Context;Lcom/instagram/feed/d/l;)V

    return-void
.end method
