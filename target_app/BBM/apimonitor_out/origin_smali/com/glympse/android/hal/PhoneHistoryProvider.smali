.class public Lcom/glympse/android/hal/PhoneHistoryProvider;
.super Ljava/lang/Object;
.source "PhoneHistoryProvider.java"

# interfaces
.implements Lcom/glympse/android/hal/GPhoneHistoryProvider;


# static fields
.field private static final cG:[Ljava/lang/String;


# instance fields
.field private cF:J

.field private e:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "number"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "name"

    aput-object v2, v0, v1

    sput-object v0, Lcom/glympse/android/hal/PhoneHistoryProvider;->cG:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/glympse/android/hal/PhoneHistoryProvider;->e:Landroid/content/Context;

    const-wide v0, 0x9a7ec800L

    iput-wide v0, p0, Lcom/glympse/android/hal/PhoneHistoryProvider;->cF:J

    return-void
.end method


# virtual methods
.method public getCallLog()Lcom/glympse/android/core/GArray;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/glympse/android/core/GArray",
            "<",
            "Lcom/glympse/android/api/GInvite;",
            ">;"
        }
    .end annotation

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/glympse/android/hal/PhoneHistoryProvider;->e:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v1, Landroid/text/format/Time;

    invoke-direct {v1}, Landroid/text/format/Time;-><init>()V

    invoke-virtual {v1}, Landroid/text/format/Time;->setToNow()V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v1

    iget-wide v5, p0, Lcom/glympse/android/hal/PhoneHistoryProvider;->cF:J

    sub-long v5, v1, v5

    sget-object v1, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/glympse/android/hal/PhoneHistoryProvider;->cG:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v7, "date>="

    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_6c

    new-instance v4, Lcom/glympse/android/hal/GVector;

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    invoke-direct {v4, v0}, Lcom/glympse/android/hal/GVector;-><init>(I)V

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    :goto_3f
    if-eqz v0, :cond_69

    const-string v0, "number"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v0, "name"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5c

    move-object v0, v1

    :cond_5c
    const/4 v3, 0x3

    invoke-static {v3, v0, v1}, Lcom/glympse/android/lib/LibFactory;->createInvite(ILjava/lang/String;Ljava/lang/String;)Lcom/glympse/android/api/GInvite;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/glympse/android/hal/GVector;->add(Ljava/lang/Object;)Z

    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    goto :goto_3f

    :cond_69
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_6c
    return-object v4
.end method

.method public setLookback(J)V
    .registers 3

    iput-wide p1, p0, Lcom/glympse/android/hal/PhoneHistoryProvider;->cF:J

    return-void
.end method
