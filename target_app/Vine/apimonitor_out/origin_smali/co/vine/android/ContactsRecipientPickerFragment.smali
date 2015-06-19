.class public Lco/vine/android/ContactsRecipientPickerFragment;
.super Lco/vine/android/BaseRecipientPickerFragment;
.source "ContactsRecipientPickerFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lco/vine/android/ContactsRecipientPickerFragment$RecipientContactsQuery;,
        Lco/vine/android/ContactsRecipientPickerFragment$FilterRunnable;,
        Lco/vine/android/ContactsRecipientPickerFragment$SortRecpientContactsTask;
    }
.end annotation


# static fields
.field public static final FLAG_EMAIL:I = 0x1

.field public static final FLAG_PHONE:I = 0x2

.field public static final LOADER_ID_FILTER_CONTACTS:I = 0x1


# instance fields
.field private mActiveAdapter:Lco/vine/android/ContactsPickerAdapter;

.field private mArrayAdapter:Lco/vine/android/ContactsPickerAdapter;

.field private mContactEntryMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lco/vine/android/ContactEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mFilterAdapter:Lco/vine/android/ContactsPickerAdapter;

.field private mFilterTask:Landroid/os/AsyncTask;

.field private final mListener:Lco/vine/android/OnContactEntryClickedListener;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lco/vine/android/BaseRecipientPickerFragment;-><init>()V

    new-instance v0, Lco/vine/android/ContactsRecipientPickerFragment$1;

    invoke-direct {v0, p0}, Lco/vine/android/ContactsRecipientPickerFragment$1;-><init>(Lco/vine/android/ContactsRecipientPickerFragment;)V

    iput-object v0, p0, Lco/vine/android/ContactsRecipientPickerFragment;->mListener:Lco/vine/android/OnContactEntryClickedListener;

    return-void
.end method

.method static synthetic access$000(Lco/vine/android/ContactsRecipientPickerFragment;)Ljava/util/HashMap;
    .registers 2

    iget-object v0, p0, Lco/vine/android/ContactsRecipientPickerFragment;->mContactEntryMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$100(Lco/vine/android/ContactsRecipientPickerFragment;)Lco/vine/android/ContactsPickerAdapter;
    .registers 2

    iget-object v0, p0, Lco/vine/android/ContactsRecipientPickerFragment;->mActiveAdapter:Lco/vine/android/ContactsPickerAdapter;

    return-object v0
.end method

.method static synthetic access$200(Lco/vine/android/ContactsRecipientPickerFragment;Lco/vine/android/ContactEntry;Lco/vine/android/api/VineRecipient;ILjava/lang/String;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lco/vine/android/ContactsRecipientPickerFragment;->onContactEntryClicked(Lco/vine/android/ContactEntry;Lco/vine/android/api/VineRecipient;ILjava/lang/String;)V

    return-void
.end method

.method private onContactEntryClicked(Lco/vine/android/ContactEntry;Lco/vine/android/api/VineRecipient;ILjava/lang/String;)V
    .registers 6

    invoke-virtual {p0, p2}, Lco/vine/android/ContactsRecipientPickerFragment;->isRecipientSelected(Lco/vine/android/api/VineRecipient;)Z

    move-result v0

    if-nez v0, :cond_13

    invoke-virtual {p0, p2}, Lco/vine/android/ContactsRecipientPickerFragment;->addRecipient(Lco/vine/android/api/VineRecipient;)V

    iget-object v0, p0, Lco/vine/android/ContactsRecipientPickerFragment;->mActiveAdapter:Lco/vine/android/ContactsPickerAdapter;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lco/vine/android/ContactsRecipientPickerFragment;->mActiveAdapter:Lco/vine/android/ContactsPickerAdapter;

    invoke-virtual {v0, p1, p3, p4}, Lco/vine/android/ContactsPickerAdapter;->onRecipientItemAdded(Lco/vine/android/ContactEntry;ILjava/lang/String;)V

    :cond_12
    :goto_12
    return-void

    :cond_13
    invoke-virtual {p0, p2}, Lco/vine/android/ContactsRecipientPickerFragment;->removeRecipient(Lco/vine/android/api/VineRecipient;)V

    invoke-virtual {p0, p2}, Lco/vine/android/ContactsRecipientPickerFragment;->onRecipientItemRemoved(Lco/vine/android/api/VineRecipient;)V

    goto :goto_12
.end method


# virtual methods
.method protected handleFocus()V
    .registers 1

    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .registers 4

    invoke-super {p0, p1}, Lco/vine/android/BaseRecipientPickerFragment;->onActivityCreated(Landroid/os/Bundle;)V

    sget-object v0, Lco/vine/android/ContactEntry;->sProjection:[Ljava/lang/String;

    iput-object v0, p0, Lco/vine/android/ContactsRecipientPickerFragment;->mProjection:[Ljava/lang/String;

    const-string v0, "mimetype=? OR mimetype=?"

    iput-object v0, p0, Lco/vine/android/ContactsRecipientPickerFragment;->mSelection:Ljava/lang/String;

    sget-object v0, Lco/vine/android/ContactEntry;->sSelectionArgs:[Ljava/lang/String;

    iput-object v0, p0, Lco/vine/android/ContactsRecipientPickerFragment;->mSelArgs:[Ljava/lang/String;

    const-string v0, "contact_id ASC "

    iput-object v0, p0, Lco/vine/android/ContactsRecipientPickerFragment;->mSortOrder:Ljava/lang/String;

    iget-object v0, p0, Lco/vine/android/ContactsRecipientPickerFragment;->mArrayAdapter:Lco/vine/android/ContactsPickerAdapter;

    if-nez v0, :cond_1e

    new-instance v0, Lco/vine/android/ContactsPickerAdapter;

    invoke-direct {v0, p0}, Lco/vine/android/ContactsPickerAdapter;-><init>(Lco/vine/android/ContactsRecipientPickerFragment;)V

    iput-object v0, p0, Lco/vine/android/ContactsRecipientPickerFragment;->mArrayAdapter:Lco/vine/android/ContactsPickerAdapter;

    :cond_1e
    iget-object v0, p0, Lco/vine/android/ContactsRecipientPickerFragment;->mFilterAdapter:Lco/vine/android/ContactsPickerAdapter;

    if-nez v0, :cond_29

    new-instance v0, Lco/vine/android/ContactsPickerAdapter;

    invoke-direct {v0, p0}, Lco/vine/android/ContactsPickerAdapter;-><init>(Lco/vine/android/ContactsRecipientPickerFragment;)V

    iput-object v0, p0, Lco/vine/android/ContactsRecipientPickerFragment;->mFilterAdapter:Lco/vine/android/ContactsPickerAdapter;

    :cond_29
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lco/vine/android/ContactsRecipientPickerFragment;->mContactEntryMap:Ljava/util/HashMap;

    iget-object v0, p0, Lco/vine/android/ContactsRecipientPickerFragment;->mListView:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setChoiceMode(I)V

    invoke-virtual {p0}, Lco/vine/android/ContactsRecipientPickerFragment;->initLoader()V

    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/support/v4/content/Loader;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/support/v4/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    const/4 v4, 0x0

    packed-switch p1, :pswitch_data_40

    sget-object v2, Lco/vine/android/ContactEntry;->sUri:Landroid/net/Uri;

    new-instance v4, Landroid/support/v4/content/CursorLoader;

    invoke-virtual {p0}, Lco/vine/android/ContactsRecipientPickerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    iget-object v7, p0, Lco/vine/android/ContactsRecipientPickerFragment;->mProjection:[Ljava/lang/String;

    iget-object v8, p0, Lco/vine/android/ContactsRecipientPickerFragment;->mSelection:Ljava/lang/String;

    iget-object v9, p0, Lco/vine/android/ContactsRecipientPickerFragment;->mSelArgs:[Ljava/lang/String;

    iget-object v10, p0, Lco/vine/android/ContactsRecipientPickerFragment;->mSortOrder:Ljava/lang/String;

    move-object v6, v2

    invoke-direct/range {v4 .. v10}, Landroid/support/v4/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v4

    :goto_19
    return-object v0

    :pswitch_1a
    const-string v0, "filter"

    const-string v1, ""

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-static {v11}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v3, v0

    new-instance v0, Landroid/support/v4/content/CursorLoader;

    invoke-virtual {p0}, Lco/vine/android/ContactsRecipientPickerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    move-object v5, v4

    move-object v6, v4

    invoke-direct/range {v0 .. v6}, Landroid/support/v4/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_19

    :pswitch_data_40
    .packed-switch 0x1
        :pswitch_1a
    .end packed-switch
.end method

.method public onGetFriendsTypeAheadComplete(Ljava/lang/String;Ljava/util/ArrayList;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lco/vine/android/api/VineUser;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    invoke-virtual {p2}, Landroid/view/View;->isActivated()Z

    move-result v0

    if-eqz v0, :cond_b

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/view/View;->setActivated(Z)V

    :cond_a
    :goto_a
    return-void

    :cond_b
    const-wide/16 v0, 0x0

    cmp-long v0, p4, v0

    if-lez v0, :cond_a

    iget-object v1, p0, Lco/vine/android/ContactsRecipientPickerFragment;->mListener:Lco/vine/android/OnContactEntryClickedListener;

    iget-object v0, p0, Lco/vine/android/ContactsRecipientPickerFragment;->mContactEntryMap:Ljava/util/HashMap;

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lco/vine/android/ContactEntry;

    invoke-virtual {v1, p0, v0}, Lco/vine/android/OnContactEntryClickedListener;->onClick(Landroid/support/v4/app/Fragment;Lco/vine/android/ContactEntry;)V

    goto :goto_a
.end method

.method public onLoadFinished(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v2, 0x1

    invoke-virtual {p1}, Landroid/support/v4/content/Loader;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_38

    iget-object v1, p0, Lco/vine/android/ContactsRecipientPickerFragment;->mArrayAdapter:Lco/vine/android/ContactsPickerAdapter;

    iput-object v1, p0, Lco/vine/android/ContactsRecipientPickerFragment;->mActiveAdapter:Lco/vine/android/ContactsPickerAdapter;

    new-instance v1, Lco/vine/android/ContactsRecipientPickerFragment$SortRecpientContactsTask;

    invoke-direct {v1, p0, v0}, Lco/vine/android/ContactsRecipientPickerFragment$SortRecpientContactsTask;-><init>(Lco/vine/android/ContactsRecipientPickerFragment;I)V

    new-array v2, v2, [Landroid/database/Cursor;

    aput-object p2, v2, v3

    invoke-virtual {v1, v2}, Lco/vine/android/ContactsRecipientPickerFragment$SortRecpientContactsTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :goto_19
    return-void

    :pswitch_1a
    iget-object v1, p0, Lco/vine/android/ContactsRecipientPickerFragment;->mFilterTask:Landroid/os/AsyncTask;

    if-eqz v1, :cond_23

    iget-object v1, p0, Lco/vine/android/ContactsRecipientPickerFragment;->mFilterTask:Landroid/os/AsyncTask;

    invoke-virtual {v1, v2}, Landroid/os/AsyncTask;->cancel(Z)Z

    :cond_23
    iget-object v1, p0, Lco/vine/android/ContactsRecipientPickerFragment;->mFilterAdapter:Lco/vine/android/ContactsPickerAdapter;

    iput-object v1, p0, Lco/vine/android/ContactsRecipientPickerFragment;->mActiveAdapter:Lco/vine/android/ContactsPickerAdapter;

    new-instance v1, Lco/vine/android/ContactsRecipientPickerFragment$SortRecpientContactsTask;

    invoke-direct {v1, p0, v0}, Lco/vine/android/ContactsRecipientPickerFragment$SortRecpientContactsTask;-><init>(Lco/vine/android/ContactsRecipientPickerFragment;I)V

    new-array v2, v2, [Landroid/database/Cursor;

    aput-object p2, v2, v3

    invoke-virtual {v1, v2}, Lco/vine/android/ContactsRecipientPickerFragment$SortRecpientContactsTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v1

    iput-object v1, p0, Lco/vine/android/ContactsRecipientPickerFragment;->mFilterTask:Landroid/os/AsyncTask;

    goto :goto_19

    nop

    :pswitch_data_38
    .packed-switch 0x1
        :pswitch_1a
    .end packed-switch
.end method

.method public bridge synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .registers 3

    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lco/vine/android/ContactsRecipientPickerFragment;->onLoadFinished(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onRecipientItemRemoved(Lco/vine/android/api/VineRecipient;)V
    .registers 7

    iget-object v2, p0, Lco/vine/android/ContactsRecipientPickerFragment;->mActiveAdapter:Lco/vine/android/ContactsPickerAdapter;

    if-eqz v2, :cond_27

    iget-object v2, p0, Lco/vine/android/ContactsRecipientPickerFragment;->mContactEntryMap:Ljava/util/HashMap;

    iget-wide v3, p1, Lco/vine/android/api/VineRecipient;->contactId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lco/vine/android/ContactEntry;

    if-eqz v0, :cond_27

    const/4 v1, 0x2

    const-string v2, "email"

    iget-object v3, p1, Lco/vine/android/api/VineRecipient;->key:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    const/4 v1, 0x1

    :cond_20
    iget-object v2, p0, Lco/vine/android/ContactsRecipientPickerFragment;->mActiveAdapter:Lco/vine/android/ContactsPickerAdapter;

    iget-object v3, p1, Lco/vine/android/api/VineRecipient;->value:Ljava/lang/String;

    invoke-virtual {v2, v0, v1, v3}, Lco/vine/android/ContactsPickerAdapter;->onRecipientItemRemoved(Lco/vine/android/ContactEntry;ILjava/lang/String;)V

    :cond_27
    return-void
.end method

.method protected onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 10

    invoke-super {p0, p1, p2, p3, p4}, Lco/vine/android/BaseRecipientPickerFragment;->onTextChanged(Ljava/lang/CharSequence;III)V

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1a

    iget-object v1, p0, Lco/vine/android/ContactsRecipientPickerFragment;->mHandler:Landroid/os/Handler;

    new-instance v2, Lco/vine/android/ContactsRecipientPickerFragment$FilterRunnable;

    invoke-direct {v2, p0, v0}, Lco/vine/android/ContactsRecipientPickerFragment$FilterRunnable;-><init>(Lco/vine/android/ContactsRecipientPickerFragment;Ljava/lang/String;)V

    const-wide/16 v3, 0x96

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_19
    return-void

    :cond_1a
    iget-object v1, p0, Lco/vine/android/ContactsRecipientPickerFragment;->mArrayAdapter:Lco/vine/android/ContactsPickerAdapter;

    if-eqz v1, :cond_2a

    iget-object v1, p0, Lco/vine/android/ContactsRecipientPickerFragment;->mArrayAdapter:Lco/vine/android/ContactsPickerAdapter;

    iput-object v1, p0, Lco/vine/android/ContactsRecipientPickerFragment;->mActiveAdapter:Lco/vine/android/ContactsPickerAdapter;

    iget-object v1, p0, Lco/vine/android/ContactsRecipientPickerFragment;->mListView:Landroid/widget/ListView;

    iget-object v2, p0, Lco/vine/android/ContactsRecipientPickerFragment;->mActiveAdapter:Lco/vine/android/ContactsPickerAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_19

    :cond_2a
    invoke-virtual {p0}, Lco/vine/android/ContactsRecipientPickerFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, p0}, Landroid/support/v4/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    goto :goto_19
.end method
