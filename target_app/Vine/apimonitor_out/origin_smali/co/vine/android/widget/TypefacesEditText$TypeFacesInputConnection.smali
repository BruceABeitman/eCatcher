.class Lco/vine/android/widget/TypefacesEditText$TypeFacesInputConnection;
.super Landroid/view/inputmethod/InputConnectionWrapper;
.source "TypefacesEditText.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lco/vine/android/widget/TypefacesEditText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TypeFacesInputConnection"
.end annotation


# instance fields
.field final synthetic this$0:Lco/vine/android/widget/TypefacesEditText;


# direct methods
.method public constructor <init>(Lco/vine/android/widget/TypefacesEditText;Landroid/view/inputmethod/InputConnection;Z)V
    .registers 4

    iput-object p1, p0, Lco/vine/android/widget/TypefacesEditText$TypeFacesInputConnection;->this$0:Lco/vine/android/widget/TypefacesEditText;

    invoke-direct {p0, p2, p3}, Landroid/view/inputmethod/InputConnectionWrapper;-><init>(Landroid/view/inputmethod/InputConnection;Z)V

    return-void
.end method


# virtual methods
.method public sendKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 3

    iget-object v0, p0, Lco/vine/android/widget/TypefacesEditText$TypeFacesInputConnection;->this$0:Lco/vine/android/widget/TypefacesEditText;

    #getter for: Lco/vine/android/widget/TypefacesEditText;->mKeyboardListener:Lco/vine/android/widget/TypefacesEditText$KeyboardListener;
    invoke-static {v0}, Lco/vine/android/widget/TypefacesEditText;->access$000(Lco/vine/android/widget/TypefacesEditText;)Lco/vine/android/widget/TypefacesEditText$KeyboardListener;

    move-result-object v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lco/vine/android/widget/TypefacesEditText$TypeFacesInputConnection;->this$0:Lco/vine/android/widget/TypefacesEditText;

    #getter for: Lco/vine/android/widget/TypefacesEditText;->mKeyboardListener:Lco/vine/android/widget/TypefacesEditText$KeyboardListener;
    invoke-static {v0}, Lco/vine/android/widget/TypefacesEditText;->access$000(Lco/vine/android/widget/TypefacesEditText;)Lco/vine/android/widget/TypefacesEditText$KeyboardListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lco/vine/android/widget/TypefacesEditText$KeyboardListener;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_1a

    :cond_14
    invoke-super {p0, p1}, Landroid/view/inputmethod/InputConnectionWrapper;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_1c

    :cond_1a
    const/4 v0, 0x1

    :goto_1b
    return v0

    :cond_1c
    const/4 v0, 0x0

    goto :goto_1b
.end method
