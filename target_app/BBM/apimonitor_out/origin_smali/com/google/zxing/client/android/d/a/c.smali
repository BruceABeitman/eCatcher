.class public abstract Lcom/google/zxing/client/android/d/a/c;
.super Landroid/os/AsyncTask;
.source "SupplementalInfoRetriever.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/google/zxing/client/android/c/c;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/text/Spannable;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/widget/TextView;Lcom/google/zxing/client/android/c/c;)V
    .registers 4

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/zxing/client/android/d/a/c;->a:Ljava/lang/ref/WeakReference;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/zxing/client/android/d/a/c;->b:Ljava/lang/ref/WeakReference;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/zxing/client/android/d/a/c;->c:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/zxing/client/android/d/a/c;->d:Ljava/util/List;

    return-void
.end method

.method public static a(Landroid/widget/TextView;Lcom/google/zxing/client/a/q;Lcom/google/zxing/client/android/c/c;Landroid/content/Context;)V
    .registers 9

    const/4 v4, 0x0

    new-instance v0, Lcom/google/zxing/client/android/b/a/b;

    invoke-direct {v0}, Lcom/google/zxing/client/android/b/a/b;-><init>()V

    invoke-virtual {v0}, Lcom/google/zxing/client/android/b/a/b;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/zxing/client/android/b/a/a;

    instance-of v1, p1, Lcom/google/zxing/client/a/ac;

    if-eqz v1, :cond_2a

    new-instance v2, Lcom/google/zxing/client/android/d/a/e;

    move-object v1, p1

    check-cast v1, Lcom/google/zxing/client/a/ac;

    invoke-direct {v2, p0, v1, p2, p3}, Lcom/google/zxing/client/android/d/a/e;-><init>(Landroid/widget/TextView;Lcom/google/zxing/client/a/ac;Lcom/google/zxing/client/android/c/c;Landroid/content/Context;)V

    new-array v1, v4, [Ljava/lang/Object;

    invoke-interface {v0, v2, v1}, Lcom/google/zxing/client/android/b/a/a;->a(Landroid/os/AsyncTask;[Ljava/lang/Object;)V

    new-instance v1, Lcom/google/zxing/client/android/d/a/d;

    check-cast p1, Lcom/google/zxing/client/a/ac;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/zxing/client/android/d/a/d;-><init>(Landroid/widget/TextView;Lcom/google/zxing/client/a/ac;Lcom/google/zxing/client/android/c/c;)V

    new-array v2, v4, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/zxing/client/android/b/a/a;->a(Landroid/os/AsyncTask;[Ljava/lang/Object;)V

    :cond_29
    :goto_29
    return-void

    :cond_2a
    instance-of v1, p1, Lcom/google/zxing/client/a/s;

    if-eqz v1, :cond_3d

    check-cast p1, Lcom/google/zxing/client/a/s;

    iget-object v1, p1, Lcom/google/zxing/client/a/s;->a:Ljava/lang/String;

    new-instance v2, Lcom/google/zxing/client/android/d/a/b;

    invoke-direct {v2, p0, v1, p2, p3}, Lcom/google/zxing/client/android/d/a/b;-><init>(Landroid/widget/TextView;Ljava/lang/String;Lcom/google/zxing/client/android/c/c;Landroid/content/Context;)V

    new-array v1, v4, [Ljava/lang/Object;

    invoke-interface {v0, v2, v1}, Lcom/google/zxing/client/android/b/a/a;->a(Landroid/os/AsyncTask;[Ljava/lang/Object;)V

    goto :goto_29

    :cond_3d
    instance-of v1, p1, Lcom/google/zxing/client/a/o;

    if-eqz v1, :cond_29

    check-cast p1, Lcom/google/zxing/client/a/o;

    iget-object v1, p1, Lcom/google/zxing/client/a/o;->a:Ljava/lang/String;

    new-instance v2, Lcom/google/zxing/client/android/d/a/b;

    invoke-direct {v2, p0, v1, p2, p3}, Lcom/google/zxing/client/android/d/a/b;-><init>(Landroid/widget/TextView;Ljava/lang/String;Lcom/google/zxing/client/android/c/c;Landroid/content/Context;)V

    new-array v3, v4, [Ljava/lang/Object;

    invoke-interface {v0, v2, v3}, Lcom/google/zxing/client/android/b/a/a;->a(Landroid/os/AsyncTask;[Ljava/lang/Object;)V

    new-instance v2, Lcom/google/zxing/client/android/d/a/a;

    invoke-direct {v2, p0, v1, p2, p3}, Lcom/google/zxing/client/android/d/a/a;-><init>(Landroid/widget/TextView;Ljava/lang/String;Lcom/google/zxing/client/android/c/c;Landroid/content/Context;)V

    new-array v1, v4, [Ljava/lang/Object;

    invoke-interface {v0, v2, v1}, Lcom/google/zxing/client/android/b/a/a;->a(Landroid/os/AsyncTask;[Ljava/lang/Object;)V

    goto :goto_29
.end method


# virtual methods
.method abstract a()V
.end method

.method final a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    .registers 14

    const/4 v3, 0x1

    const/4 v1, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p2, :cond_12

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_12
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    array-length v6, p3

    move v2, v1

    move v0, v3

    :goto_19
    if-ge v2, v6, :cond_34

    aget-object v7, p3, v2

    if-eqz v0, :cond_26

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v0, v1

    :goto_23
    add-int/lit8 v2, v2, 0x1

    goto :goto_19

    :cond_26
    const-string v8, " ["

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v7, 0x5d

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_23

    :cond_34
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Landroid/text/SpannableString;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    if-eqz p4, :cond_7c

    const-string v6, "HTTP://"

    invoke-virtual {p4, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8e

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "http"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v7, 0x4

    invoke-virtual {p4, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    :cond_72
    :goto_72
    new-instance v6, Landroid/text/style/URLSpan;

    invoke-direct {v6, p4}, Landroid/text/style/URLSpan;-><init>(Ljava/lang/String;)V

    const/16 v7, 0x21

    invoke-interface {v4, v6, v5, v0, v7}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    :cond_7c
    iget-object v0, p0, Lcom/google/zxing/client/android/d/a/c;->c:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/zxing/client/android/d/a/c;->d:Ljava/util/List;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    aput-object p1, v4, v1

    aput-object v2, v4, v3

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :cond_8e
    const-string v6, "HTTPS://"

    invoke-virtual {p4, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_72

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "https"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v7, 0x5

    invoke-virtual {p4, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    goto :goto_72
.end method

.method public final varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    :try_start_0
    invoke-virtual {p0}, Lcom/google/zxing/client/android/d/a/c;->a()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_3} :catch_5

    :goto_3
    const/4 v0, 0x0

    return-object v0

    :catch_5
    move-exception v0

    const-string v1, "SupplementalInfo"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3
.end method

.method protected onPostExecute(Ljava/lang/Object;)V
    .registers 16

    iget-object v0, p0, Lcom/google/zxing/client/android/d/a/c;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_27

    iget-object v1, p0, Lcom/google/zxing/client/android/d/a/c;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_10
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_20

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/text/Spannable;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    goto :goto_10

    :cond_20
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    :cond_27
    iget-object v0, p0, Lcom/google/zxing/client/android/d/a/c;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lcom/google/zxing/client/android/c/c;

    if-eqz v9, :cond_be

    iget-object v0, p0, Lcom/google/zxing/client/android/d/a/c;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_38
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_be

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v5, v0, v1

    const/4 v1, 0x1

    aget-object v11, v0, v1

    new-instance v0, Lcom/google/zxing/client/android/c/a;

    iget-object v1, v9, Lcom/google/zxing/client/android/c/c;->b:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/google/zxing/client/android/c/a;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    const/4 v10, 0x0

    :try_start_53
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_56
    .catchall {:try_start_53 .. :try_end_56} :catchall_b7

    move-result-object v0

    :try_start_57
    const-string v1, "history"

    sget-object v2, Lcom/google/zxing/client/android/c/c;->a:[Ljava/lang/String;

    const-string v3, "text=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "timestamp DESC"

    const-string v8, "1"

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_6c
    .catchall {:try_start_57 .. :try_end_6c} :catchall_bf

    move-result-object v2

    const/4 v3, 0x0

    const/4 v1, 0x0

    :try_start_6f
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_7f

    const/4 v1, 0x0

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v1, 0x1

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    :cond_7f
    if-eqz v3, :cond_9b

    if-nez v1, :cond_9f

    move-object v1, v11

    :goto_84
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    const-string v5, "details"

    invoke-virtual {v4, v5, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "history"

    const-string v5, "id=?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v3, v6, v7

    invoke-virtual {v0, v1, v4, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_9b
    .catchall {:try_start_6f .. :try_end_9b} :catchall_c4

    :cond_9b
    invoke-static {v2, v0}, Lcom/google/zxing/client/android/c/c;->a(Landroid/database/Cursor;Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_38

    :cond_9f
    :try_start_9f
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " : "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_b5
    .catchall {:try_start_9f .. :try_end_b5} :catchall_c4

    move-result-object v1

    goto :goto_84

    :catchall_b7
    move-exception v0

    move-object v2, v1

    move-object v1, v10

    :goto_ba
    invoke-static {v1, v2}, Lcom/google/zxing/client/android/c/c;->a(Landroid/database/Cursor;Landroid/database/sqlite/SQLiteDatabase;)V

    throw v0

    :cond_be
    return-void

    :catchall_bf
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    move-object v1, v10

    goto :goto_ba

    :catchall_c4
    move-exception v1

    move-object v13, v1

    move-object v1, v2

    move-object v2, v0

    move-object v0, v13

    goto :goto_ba
.end method
