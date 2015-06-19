.class final Lcom/bbm/ui/activities/sq;
.super Ljava/lang/Object;
.source "GroupPictureUploadActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field final synthetic a:Lcom/bbm/ui/activities/GroupPictureUploadActivity;


# direct methods
.method constructor <init>(Lcom/bbm/ui/activities/GroupPictureUploadActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/ui/activities/sq;->a:Lcom/bbm/ui/activities/GroupPictureUploadActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .registers 2

    return-void
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 7

    iget-object v0, p0, Lcom/bbm/ui/activities/sq;->a:Lcom/bbm/ui/activities/GroupPictureUploadActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/GroupPictureUploadActivity;->e(Lcom/bbm/ui/activities/GroupPictureUploadActivity;)Lcom/bbm/ui/HeaderButtonActionBar;

    move-result-object v1

    iget-object v0, p0, Lcom/bbm/ui/activities/sq;->a:Lcom/bbm/ui/activities/GroupPictureUploadActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/GroupPictureUploadActivity;->d(Lcom/bbm/ui/activities/GroupPictureUploadActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    if-lez v0, :cond_2a

    const/4 v0, 0x1

    :goto_13
    invoke-virtual {v1, v0}, Lcom/bbm/ui/HeaderButtonActionBar;->setPositiveButtonEnabled(Z)V

    iget-object v0, p0, Lcom/bbm/ui/activities/sq;->a:Lcom/bbm/ui/activities/GroupPictureUploadActivity;

    iget-object v1, p0, Lcom/bbm/ui/activities/sq;->a:Lcom/bbm/ui/activities/GroupPictureUploadActivity;

    invoke-static {v1}, Lcom/bbm/ui/activities/GroupPictureUploadActivity;->d(Lcom/bbm/ui/activities/GroupPictureUploadActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bbm/ui/activities/GroupPictureUploadActivity;->a(Lcom/bbm/ui/activities/GroupPictureUploadActivity;Ljava/lang/String;)Ljava/lang/String;

    return-void

    :cond_2a
    const/4 v0, 0x0

    goto :goto_13
.end method
