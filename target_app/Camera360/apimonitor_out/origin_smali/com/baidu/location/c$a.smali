.class public Lcom/baidu/location/c$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/location/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/location/c;

.field public byte:J

.field public do:I

.field public for:I

.field public if:I

.field public int:I

.field public new:C

.field public try:I


# direct methods
.method public constructor <init>(Lcom/baidu/location/c;)V
    .registers 5

    const/4 v2, -0x1

    iput-object p1, p0, Lcom/baidu/location/c$a;->a:Lcom/baidu/location/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v2, p0, Lcom/baidu/location/c$a;->for:I

    iput v2, p0, Lcom/baidu/location/c$a;->try:I

    iput v2, p0, Lcom/baidu/location/c$a;->do:I

    iput v2, p0, Lcom/baidu/location/c$a;->if:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/baidu/location/c$a;->byte:J

    iput v2, p0, Lcom/baidu/location/c$a;->int:I

    const/4 v0, 0x0

    iput-char v0, p0, Lcom/baidu/location/c$a;->new:C

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/baidu/location/c$a;->byte:J

    return-void
.end method

.method public constructor <init>(Lcom/baidu/location/c;IIIIC)V
    .registers 11

    const/4 v2, -0x1

    iput-object p1, p0, Lcom/baidu/location/c$a;->a:Lcom/baidu/location/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v2, p0, Lcom/baidu/location/c$a;->for:I

    iput v2, p0, Lcom/baidu/location/c$a;->try:I

    iput v2, p0, Lcom/baidu/location/c$a;->do:I

    iput v2, p0, Lcom/baidu/location/c$a;->if:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/baidu/location/c$a;->byte:J

    iput v2, p0, Lcom/baidu/location/c$a;->int:I

    const/4 v0, 0x0

    iput-char v0, p0, Lcom/baidu/location/c$a;->new:C

    iput p2, p0, Lcom/baidu/location/c$a;->for:I

    iput p3, p0, Lcom/baidu/location/c$a;->try:I

    iput p4, p0, Lcom/baidu/location/c$a;->do:I

    iput p5, p0, Lcom/baidu/location/c$a;->if:I

    iput-char p6, p0, Lcom/baidu/location/c$a;->new:C

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    iput-wide v0, p0, Lcom/baidu/location/c$a;->byte:J

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    iget v1, p0, Lcom/baidu/location/c$a;->try:I

    add-int/lit8 v1, v1, 0x17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string/jumbo v1, "H"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Lcom/baidu/location/c$a;->for:I

    add-int/lit8 v1, v1, 0x2d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string/jumbo v1, "K"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Lcom/baidu/location/c$a;->if:I

    add-int/lit8 v1, v1, 0x36

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string/jumbo v1, "Q"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Lcom/baidu/location/c$a;->do:I

    add-int/lit16 v1, v1, 0xcb

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/baidu/location/c$a;)Z
    .registers 4

    iget v0, p0, Lcom/baidu/location/c$a;->for:I

    iget v1, p1, Lcom/baidu/location/c$a;->for:I

    if-ne v0, v1, :cond_14

    iget v0, p0, Lcom/baidu/location/c$a;->try:I

    iget v1, p1, Lcom/baidu/location/c$a;->try:I

    if-ne v0, v1, :cond_14

    iget v0, p0, Lcom/baidu/location/c$a;->if:I

    iget v1, p1, Lcom/baidu/location/c$a;->if:I

    if-ne v0, v1, :cond_14

    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method public do()Z
    .registers 5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/baidu/location/c$a;->byte:J

    sub-long/2addr v0, v2

    invoke-static {}, Lcom/baidu/location/c;->try()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_11

    const/4 v0, 0x1

    :goto_10
    return v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method public for()Z
    .registers 3

    iget v0, p0, Lcom/baidu/location/c$a;->for:I

    const/4 v1, -0x1

    if-le v0, v1, :cond_b

    iget v0, p0, Lcom/baidu/location/c$a;->try:I

    if-lez v0, :cond_b

    const/4 v0, 0x1

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public if()Ljava/lang/String;
    .registers 6

    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    const-string/jumbo v1, "cell=%d|%d|%d|%d:%d"

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/baidu/location/c$a;->do:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget v4, p0, Lcom/baidu/location/c$a;->if:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget v4, p0, Lcom/baidu/location/c$a;->for:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget v4, p0, Lcom/baidu/location/c$a;->try:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    iget v4, p0, Lcom/baidu/location/c$a;->int:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public int()Ljava/lang/String;
    .registers 8

    const/4 v2, 0x0

    :try_start_1
    iget-object v0, p0, Lcom/baidu/location/c$a;->a:Lcom/baidu/location/c;

    invoke-static {v0}, Lcom/baidu/location/c;->if(Lcom/baidu/location/c;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNeighboringCellInfo()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_130

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_130

    const-string/jumbo v1, "&nc="

    const/4 v0, 0x0

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v3, v0

    :goto_1c
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_12e

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/NeighboringCellInfo;

    if-nez v3, :cond_96

    invoke-virtual {v0}, Landroid/telephony/NeighboringCellInfo;->getLac()I

    move-result v5

    iget v6, p0, Lcom/baidu/location/c$a;->for:I

    if-eq v5, v6, :cond_6a

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/telephony/NeighboringCellInfo;->getLac()I

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v5, "|"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/telephony/NeighboringCellInfo;->getCid()I

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v5, "|"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/telephony/NeighboringCellInfo;->getRssi()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_65
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    move-object v1, v0

    goto :goto_1c

    :cond_6a
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v5, "|"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/telephony/NeighboringCellInfo;->getCid()I

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v5, "|"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/telephony/NeighboringCellInfo;->getRssi()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_65

    :cond_96
    const/16 v5, 0x8

    if-ge v3, v5, :cond_12e

    invoke-virtual {v0}, Landroid/telephony/NeighboringCellInfo;->getLac()I

    move-result v5

    iget v6, p0, Lcom/baidu/location/c$a;->for:I

    if-eq v5, v6, :cond_dd

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v5, ";"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/telephony/NeighboringCellInfo;->getLac()I

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v5, "|"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/telephony/NeighboringCellInfo;->getCid()I

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v5, "|"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/telephony/NeighboringCellInfo;->getRssi()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_65

    :cond_dd
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v5, ";"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v5, "|"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/telephony/NeighboringCellInfo;->getCid()I

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v5, "|"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/telephony/NeighboringCellInfo;->getRssi()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_10e
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_10e} :catch_111

    move-result-object v0

    goto/16 :goto_65

    :catch_111
    move-exception v0

    move-object v0, v2

    :goto_113
    const-string/jumbo v1, "baidu_location_service"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Neighbour:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baidu/location/j;->if(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_12e
    move-object v0, v1

    goto :goto_113

    :cond_130
    move-object v0, v2

    goto :goto_113
.end method

.method public toString()Ljava/lang/String;
    .registers 11

    const-wide/16 v8, 0x3e8

    const/4 v0, 0x0

    new-instance v2, Ljava/lang/StringBuffer;

    const/16 v1, 0x80

    invoke-direct {v2, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    const-string/jumbo v1, "&nw="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/baidu/location/c$a;->a:Lcom/baidu/location/c;

    invoke-static {v1}, Lcom/baidu/location/c;->for(Lcom/baidu/location/c;)Lcom/baidu/location/c$a;

    move-result-object v1

    iget-char v1, v1, Lcom/baidu/location/c$a;->new:C

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const-string/jumbo v1, "&cl=%d|%d|%d|%d&cl_s=%d"

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/Object;

    iget v4, p0, Lcom/baidu/location/c$a;->do:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    const/4 v4, 0x1

    iget v5, p0, Lcom/baidu/location/c$a;->if:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    iget v5, p0, Lcom/baidu/location/c$a;->for:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    iget v5, p0, Lcom/baidu/location/c$a;->try:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x4

    iget v5, p0, Lcom/baidu/location/c$a;->int:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string/jumbo v1, "&cl_t="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-wide v3, p0, Lcom/baidu/location/c$a;->byte:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/baidu/location/c$a;->a:Lcom/baidu/location/c;

    invoke-static {v1}, Lcom/baidu/location/c;->do(Lcom/baidu/location/c;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_f6

    iget-object v1, p0, Lcom/baidu/location/c$a;->a:Lcom/baidu/location/c;

    invoke-static {v1}, Lcom/baidu/location/c;->do(Lcom/baidu/location/c;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_f6

    iget-object v1, p0, Lcom/baidu/location/c$a;->a:Lcom/baidu/location/c;

    invoke-static {v1}, Lcom/baidu/location/c;->do(Lcom/baidu/location/c;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    const-string/jumbo v1, "&clt="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v1, v0

    :goto_84
    if-ge v1, v3, :cond_f6

    iget-object v0, p0, Lcom/baidu/location/c$a;->a:Lcom/baidu/location/c;

    invoke-static {v0}, Lcom/baidu/location/c;->do(Lcom/baidu/location/c;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/location/c$a;

    iget v4, v0, Lcom/baidu/location/c$a;->do:I

    iget v5, p0, Lcom/baidu/location/c$a;->do:I

    if-eq v4, v5, :cond_9d

    iget v4, v0, Lcom/baidu/location/c$a;->do:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    :cond_9d
    const-string/jumbo v4, "|"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v4, v0, Lcom/baidu/location/c$a;->if:I

    iget v5, p0, Lcom/baidu/location/c$a;->if:I

    if-eq v4, v5, :cond_ae

    iget v4, v0, Lcom/baidu/location/c$a;->if:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    :cond_ae
    const-string/jumbo v4, "|"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v4, v0, Lcom/baidu/location/c$a;->for:I

    iget v5, p0, Lcom/baidu/location/c$a;->for:I

    if-eq v4, v5, :cond_bf

    iget v4, v0, Lcom/baidu/location/c$a;->for:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    :cond_bf
    const-string/jumbo v4, "|"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v4, v0, Lcom/baidu/location/c$a;->try:I

    iget v5, p0, Lcom/baidu/location/c$a;->try:I

    if-eq v4, v5, :cond_d0

    iget v4, v0, Lcom/baidu/location/c$a;->try:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    :cond_d0
    const-string/jumbo v4, "|"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v4, v3, -0x1

    if-eq v1, v4, :cond_ea

    iget-wide v4, v0, Lcom/baidu/location/c$a;->byte:J

    div-long/2addr v4, v8

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    :goto_e0
    const-string/jumbo v0, ";"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_84

    :cond_ea
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, v0, Lcom/baidu/location/c$a;->byte:J

    sub-long/2addr v4, v6

    div-long/2addr v4, v8

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    goto :goto_e0

    :cond_f6
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
