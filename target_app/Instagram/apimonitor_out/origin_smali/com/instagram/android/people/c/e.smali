.class final Lcom/instagram/android/people/c/e;
.super Ljava/lang/Object;
.source "ModifyPhotosOfYouHelper.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Landroid/app/Dialog;

.field final synthetic b:Lcom/instagram/android/people/c/a;


# direct methods
.method constructor <init>(Lcom/instagram/android/people/c/a;Landroid/app/Dialog;)V
    .registers 3

    iput-object p1, p0, Lcom/instagram/android/people/c/e;->b:Lcom/instagram/android/people/c/a;

    iput-object p2, p0, Lcom/instagram/android/people/c/e;->a:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 4

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/instagram/android/people/c/e;->a:Landroid/app/Dialog;

    sget v1, Lcom/facebook/av;->more_options_container:I

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
