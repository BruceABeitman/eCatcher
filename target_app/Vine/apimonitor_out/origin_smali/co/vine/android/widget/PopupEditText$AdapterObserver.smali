.class Lco/vine/android/widget/PopupEditText$AdapterObserver;
.super Landroid/database/DataSetObserver;
.source "PopupEditText.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lco/vine/android/widget/PopupEditText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AdapterObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lco/vine/android/widget/PopupEditText;


# direct methods
.method public constructor <init>(Lco/vine/android/widget/PopupEditText;)V
    .registers 2

    iput-object p1, p0, Lco/vine/android/widget/PopupEditText$AdapterObserver;->this$0:Lco/vine/android/widget/PopupEditText;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .registers 3

    invoke-super {p0}, Landroid/database/DataSetObserver;->onChanged()V

    iget-object v0, p0, Lco/vine/android/widget/PopupEditText$AdapterObserver;->this$0:Lco/vine/android/widget/PopupEditText;

    #getter for: Lco/vine/android/widget/PopupEditText;->mShowRequested:Z
    invoke-static {v0}, Lco/vine/android/widget/PopupEditText;->access$000(Lco/vine/android/widget/PopupEditText;)Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lco/vine/android/widget/PopupEditText$AdapterObserver;->this$0:Lco/vine/android/widget/PopupEditText;

    invoke-virtual {v0}, Lco/vine/android/widget/PopupEditText;->showDropDown()V

    iget-object v0, p0, Lco/vine/android/widget/PopupEditText$AdapterObserver;->this$0:Lco/vine/android/widget/PopupEditText;

    const/4 v1, 0x0

    #setter for: Lco/vine/android/widget/PopupEditText;->mShowRequested:Z
    invoke-static {v0, v1}, Lco/vine/android/widget/PopupEditText;->access$002(Lco/vine/android/widget/PopupEditText;Z)Z

    :cond_16
    return-void
.end method

.method public onInvalidated()V
    .registers 2

    invoke-super {p0}, Landroid/database/DataSetObserver;->onInvalidated()V

    iget-object v0, p0, Lco/vine/android/widget/PopupEditText$AdapterObserver;->this$0:Lco/vine/android/widget/PopupEditText;

    invoke-virtual {v0}, Lco/vine/android/widget/PopupEditText;->dismissDropDown()V

    return-void
.end method
