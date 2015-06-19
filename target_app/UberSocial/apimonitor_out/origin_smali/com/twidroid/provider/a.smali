.class Lcom/twidroid/provider/a;
.super Landroid/database/AbstractCursor;
.source "SourceFile"


# instance fields
.field a:I

.field b:J

.field c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Landroid/database/AbstractCursor;-><init>()V

    const-string v0, "new.mentions"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-static {}, Lcom/twidroid/provider/SettingsProvider;->a()I

    move-result v0

    iput v0, p0, Lcom/twidroid/provider/a;->a:I

    :cond_11
    const-string v0, "new.tweets"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-static {}, Lcom/twidroid/provider/SettingsProvider;->b()I

    move-result v0

    iput v0, p0, Lcom/twidroid/provider/a;->a:I

    :cond_1f
    const-string v0, "new.direct"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2d

    invoke-static {}, Lcom/twidroid/provider/SettingsProvider;->c()I

    move-result v0

    iput v0, p0, Lcom/twidroid/provider/a;->a:I

    :cond_2d
    const-string v0, "new.innercircle"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3b

    invoke-static {}, Lcom/twidroid/provider/SettingsProvider;->d()I

    move-result v0

    iput v0, p0, Lcom/twidroid/provider/a;->a:I

    :cond_3b
    const-string v0, "jump_to_tweet"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_49

    invoke-static {}, Lcom/twidroid/provider/SettingsProvider;->e()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/twidroid/provider/a;->b:J

    :cond_49
    const-string v0, "new.mentions"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_69

    const-string v0, "new.tweets"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_69

    const-string v0, "new.direct"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_69

    const-string v0, "new.innercircle"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_76

    :cond_69
    new-instance v0, Ljava/lang/Integer;

    iget v1, p0, Lcom/twidroid/provider/a;->a:I

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twidroid/provider/a;->c:Ljava/lang/String;

    :cond_76
    const-string v0, "new.text"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_84

    invoke-static {}, Lcom/twidroid/provider/SettingsProvider;->f()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twidroid/provider/a;->c:Ljava/lang/String;

    :cond_84
    return-void
.end method


# virtual methods
.method public close()V
    .registers 1

    return-void
.end method

.method public getColumnCount()I
    .registers 2

    const/4 v0, 0x2

    return v0
.end method

.method public getColumnNames()[Ljava/lang/String;
    .registers 4

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "test"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "test2"

    aput-object v2, v0, v1

    return-object v0
.end method

.method public getCount()I
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public getDouble(I)D
    .registers 4

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getFloat(I)F
    .registers 3

    const/4 v0, 0x0

    return v0
.end method

.method public getInt(I)I
    .registers 3

    iget v0, p0, Lcom/twidroid/provider/a;->a:I

    return v0
.end method

.method public getLong(I)J
    .registers 4

    iget-wide v0, p0, Lcom/twidroid/provider/a;->b:J

    return-wide v0
.end method

.method public getShort(I)S
    .registers 3

    const/4 v0, 0x0

    return v0
.end method

.method public getString(I)Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/twidroid/provider/a;->c:Ljava/lang/String;

    return-object v0
.end method

.method public isNull(I)Z
    .registers 3

    const/4 v0, 0x0

    return v0
.end method
