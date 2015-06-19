.class Lco/vine/android/ContactsRecipientPickerFragment$FilterRunnable;
.super Ljava/lang/Object;
.source "ContactsRecipientPickerFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lco/vine/android/ContactsRecipientPickerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FilterRunnable"
.end annotation


# instance fields
.field private mQuery:Ljava/lang/String;

.field final synthetic this$0:Lco/vine/android/ContactsRecipientPickerFragment;


# direct methods
.method public constructor <init>(Lco/vine/android/ContactsRecipientPickerFragment;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lco/vine/android/ContactsRecipientPickerFragment$FilterRunnable;->this$0:Lco/vine/android/ContactsRecipientPickerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lco/vine/android/ContactsRecipientPickerFragment$FilterRunnable;->mQuery:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "filter"

    iget-object v2, p0, Lco/vine/android/ContactsRecipientPickerFragment$FilterRunnable;->mQuery:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lco/vine/android/ContactsRecipientPickerFragment$FilterRunnable;->this$0:Lco/vine/android/ContactsRecipientPickerFragment;

    invoke-virtual {v1}, Lco/vine/android/ContactsRecipientPickerFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lco/vine/android/ContactsRecipientPickerFragment$FilterRunnable;->this$0:Lco/vine/android/ContactsRecipientPickerFragment;

    invoke-virtual {v1, v2, v0, v3}, Landroid/support/v4/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    return-void
.end method
