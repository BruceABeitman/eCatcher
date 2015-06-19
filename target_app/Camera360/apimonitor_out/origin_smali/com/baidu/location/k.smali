.class Lcom/baidu/location/k;
.super Ljava/lang/Object;


# static fields
.field private static a:Landroid/location/Location; = null

.field private static b:I = 0x0

.field private static byte:I = 0x0

.field private static c:I = 0x0

.field private static case:I = 0x0

.field private static char:I = 0x0

.field private static final d:I = 0x410

.field private static do:Ljava/lang/String; = null

.field private static e:Landroid/location/Location; = null

.field private static else:Ljava/io/File; = null

.field private static final f:I = 0x20

.field private static final for:I = 0x800

.field private static g:Lcom/baidu/location/e$c; = null

.field private static final goto:I = 0x80

.field private static h:Ljava/util/ArrayList; = null

.field private static i:I = 0x0

.field private static final if:I = 0x800

.field private static int:D = 0.0

.field private static j:Ljava/util/ArrayList; = null

.field private static final k:Ljava/lang/String; = null

.field private static l:I = 0x0

.field private static long:Ljava/util/ArrayList; = null

.field private static m:Ljava/util/ArrayList; = null

.field private static n:D = 0.0

.field private static new:D = 0.0

.field private static o:I = 0x0

.field private static final p:Ljava/lang/String; = null

.field private static q:Landroid/location/Location; = null

.field private static r:Ljava/util/ArrayList; = null

.field private static final s:I = 0x800

.field private static final t:Ljava/lang/String;

.field private static try:I

.field private static final u:Ljava/lang/String;

.field private static v:I

.field private static void:D

.field private static w:I

.field private static x:Ljava/util/ArrayList;

.field private static y:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const/16 v4, 0x400

    const/16 v3, 0x8

    const/4 v2, 0x0

    const-string/jumbo v0, "baidu_location_service"

    sput-object v0, Lcom/baidu/location/k;->do:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/baidu/location/k;->h:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/baidu/location/k;->long:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/baidu/location/k;->m:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/baidu/location/k;->x:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/baidu/location/k;->j:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/baidu/location/k;->r:Ljava/util/ArrayList;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/baidu/location/f;->ac:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/yo.dat"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/location/k;->y:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/baidu/location/f;->ac:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/yoh.dat"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/location/k;->u:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/baidu/location/f;->ac:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/yom.dat"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/location/k;->t:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/baidu/location/f;->ac:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/yol.dat"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/location/k;->k:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/baidu/location/f;->ac:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/yor.dat"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/location/k;->p:Ljava/lang/String;

    sput-object v2, Lcom/baidu/location/k;->else:Ljava/io/File;

    sput v4, Lcom/baidu/location/k;->case:I

    const/16 v0, 0x200

    sput v0, Lcom/baidu/location/k;->w:I

    sput v3, Lcom/baidu/location/k;->byte:I

    const/4 v0, 0x5

    sput v0, Lcom/baidu/location/k;->i:I

    sput v3, Lcom/baidu/location/k;->b:I

    const/16 v0, 0x10

    sput v0, Lcom/baidu/location/k;->try:I

    sput v4, Lcom/baidu/location/k;->o:I

    const/16 v0, 0x100

    sput v0, Lcom/baidu/location/k;->l:I

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/baidu/location/k;->new:D

    const-wide v0, 0x3fb999999999999aL

    sput-wide v0, Lcom/baidu/location/k;->n:D

    const-wide/high16 v0, 0x403e

    sput-wide v0, Lcom/baidu/location/k;->void:D

    const-wide/high16 v0, 0x4059

    sput-wide v0, Lcom/baidu/location/k;->int:D

    const/4 v0, 0x0

    sput v0, Lcom/baidu/location/k;->c:I

    const/16 v0, 0x40

    sput v0, Lcom/baidu/location/k;->char:I

    const/16 v0, 0x80

    sput v0, Lcom/baidu/location/k;->v:I

    sput-object v2, Lcom/baidu/location/k;->e:Landroid/location/Location;

    sput-object v2, Lcom/baidu/location/k;->q:Landroid/location/Location;

    sput-object v2, Lcom/baidu/location/k;->a:Landroid/location/Location;

    sput-object v2, Lcom/baidu/location/k;->g:Lcom/baidu/location/e$c;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/util/List;I)I
    .registers 15

    if-eqz p0, :cond_8

    const/16 v0, 0x100

    if-gt p1, v0, :cond_8

    if-gez p1, :cond_a

    :cond_8
    const/4 v0, -0x1

    :goto_9
    return v0

    :cond_a
    :try_start_a
    sget-object v0, Lcom/baidu/location/k;->else:Ljava/io/File;

    if-nez v0, :cond_2c

    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/baidu/location/k;->y:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/baidu/location/k;->else:Ljava/io/File;

    sget-object v0, Lcom/baidu/location/k;->else:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_2c

    sget-object v0, Lcom/baidu/location/k;->do:Ljava/lang/String;

    const-string/jumbo v1, "upload man readfile does not exist..."

    invoke-static {v0, v1}, Lcom/baidu/location/j;->if(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    sput-object v0, Lcom/baidu/location/k;->else:Ljava/io/File;

    const/4 v0, -0x2

    goto :goto_9

    :cond_2c
    new-instance v7, Ljava/io/RandomAccessFile;

    sget-object v0, Lcom/baidu/location/k;->else:Ljava/io/File;

    const-string/jumbo v1, "rw"

    invoke-direct {v7, v0, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    cmp-long v0, v0, v2

    if-gez v0, :cond_45

    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->close()V

    const/4 v0, -0x3

    goto :goto_9

    :cond_45
    int-to-long v0, p1

    invoke-virtual {v7, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v0

    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v1

    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v2

    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v3

    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->readLong()J

    move-result-wide v4

    invoke-static/range {v0 .. v5}, Lcom/baidu/location/k;->a(IIIIJ)Z

    move-result v6

    if-eqz v6, :cond_66

    const/4 v6, 0x1

    if-ge v1, v6, :cond_6b

    :cond_66
    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->close()V

    const/4 v0, -0x4

    goto :goto_9

    :cond_6b
    sget v6, Lcom/baidu/location/k;->o:I

    new-array v8, v6, [B

    sget v6, Lcom/baidu/location/k;->byte:I

    move v12, v6

    move v6, v1

    move v1, v12

    :goto_74
    if-lez v1, :cond_a5

    if-lez v6, :cond_a5

    add-int v9, v0, v6

    add-int/lit8 v9, v9, -0x1

    rem-int/2addr v9, v2

    mul-int/2addr v9, v3

    int-to-long v9, v9

    add-long/2addr v9, v4

    invoke-virtual {v7, v9, v10}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v9

    if-lez v9, :cond_a0

    if-ge v9, v3, :cond_a0

    const/4 v10, 0x0

    invoke-virtual {v7, v8, v10, v9}, Ljava/io/RandomAccessFile;->read([BII)I

    add-int/lit8 v10, v9, -0x1

    aget-byte v10, v8, v10

    if-nez v10, :cond_a0

    new-instance v10, Ljava/lang/String;

    const/4 v11, 0x0

    add-int/lit8 v9, v9, -0x1

    invoke-direct {v10, v8, v11, v9}, Ljava/lang/String;-><init>([BII)V

    invoke-interface {p0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_a0
    add-int/lit8 v1, v1, -0x1

    add-int/lit8 v6, v6, -0x1

    goto :goto_74

    :cond_a5
    int-to-long v8, p1

    invoke-virtual {v7, v8, v9}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {v7, v0}, Ljava/io/RandomAccessFile;->writeInt(I)V

    invoke-virtual {v7, v6}, Ljava/io/RandomAccessFile;->writeInt(I)V

    invoke-virtual {v7, v2}, Ljava/io/RandomAccessFile;->writeInt(I)V

    invoke-virtual {v7, v3}, Ljava/io/RandomAccessFile;->writeInt(I)V

    invoke-virtual {v7, v4, v5}, Ljava/io/RandomAccessFile;->writeLong(J)V

    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->close()V

    sget v0, Lcom/baidu/location/k;->byte:I
    :try_end_bd
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_bd} :catch_c0

    sub-int/2addr v0, v1

    goto/16 :goto_9

    :catch_c0
    move-exception v0

    const/4 v0, -0x5

    goto/16 :goto_9
.end method

.method public static a(I)Ljava/lang/String;
    .registers 8

    const/4 v4, 0x1

    const/4 v6, 0x0

    const/4 v0, 0x0

    if-ne p0, v4, :cond_c

    sget-object v2, Lcom/baidu/location/k;->u:Ljava/lang/String;

    sget-object v1, Lcom/baidu/location/k;->x:Ljava/util/ArrayList;

    :goto_9
    if-nez v1, :cond_24

    :cond_b
    :goto_b
    return-object v0

    :cond_c
    const/4 v1, 0x2

    if-ne p0, v1, :cond_14

    sget-object v2, Lcom/baidu/location/k;->t:Ljava/lang/String;

    sget-object v1, Lcom/baidu/location/k;->j:Ljava/util/ArrayList;

    goto :goto_9

    :cond_14
    const/4 v1, 0x3

    if-ne p0, v1, :cond_1c

    sget-object v2, Lcom/baidu/location/k;->k:Ljava/lang/String;

    sget-object v1, Lcom/baidu/location/k;->r:Ljava/util/ArrayList;

    goto :goto_9

    :cond_1c
    const/4 v1, 0x4

    if-ne p0, v1, :cond_b

    sget-object v2, Lcom/baidu/location/k;->p:Ljava/lang/String;

    sget-object v1, Lcom/baidu/location/k;->r:Ljava/util/ArrayList;

    goto :goto_9

    :cond_24
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v3, v4, :cond_46

    sget-object v3, Lcom/baidu/location/k;->do:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ":get data from sd file..."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/baidu/location/j;->if(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2, v1}, Lcom/baidu/location/k;->a(Ljava/lang/String;Ljava/util/List;)Z

    :cond_46
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_b

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1, v6}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_b
.end method

.method public static a()V
    .registers 3

    const/4 v2, 0x0

    sput v2, Lcom/baidu/location/k;->b:I

    sget-object v0, Lcom/baidu/location/k;->do:Ljava/lang/String;

    const-string/jumbo v1, "flush data..."

    invoke-static {v0, v1}, Lcom/baidu/location/j;->if(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-static {v0, v2}, Lcom/baidu/location/k;->a(IZ)V

    const/4 v0, 0x2

    invoke-static {v0, v2}, Lcom/baidu/location/k;->a(IZ)V

    const/4 v0, 0x3

    invoke-static {v0, v2}, Lcom/baidu/location/k;->a(IZ)V

    const/16 v0, 0x8

    sput v0, Lcom/baidu/location/k;->b:I

    return-void
.end method

.method public static a(DDDD)V
    .registers 10

    const-wide/16 v0, 0x0

    cmpl-double v0, p0, v0

    if-lez v0, :cond_15

    :goto_6
    sput-wide p0, Lcom/baidu/location/k;->new:D

    sput-wide p2, Lcom/baidu/location/k;->n:D

    const-wide/high16 v0, 0x4034

    cmpl-double v0, p4, v0

    if-lez v0, :cond_18

    :goto_10
    sput-wide p4, Lcom/baidu/location/k;->void:D

    sput-wide p6, Lcom/baidu/location/k;->int:D

    return-void

    :cond_15
    sget-wide p0, Lcom/baidu/location/k;->new:D

    goto :goto_6

    :cond_18
    sget-wide p4, Lcom/baidu/location/k;->void:D

    goto :goto_10
.end method

.method public static a(II)V
    .registers 2

    return-void
.end method

.method public static a(IIZ)V
    .registers 3

    return-void
.end method

.method public static a(IZ)V
    .registers 15

    const/4 v0, 0x1

    if-ne p0, v0, :cond_93

    sget-object v1, Lcom/baidu/location/k;->u:Ljava/lang/String;

    if-eqz p1, :cond_8

    :cond_7
    :goto_7
    return-void

    :cond_8
    sget-object v0, Lcom/baidu/location/k;->x:Ljava/util/ArrayList;

    move-object v12, v0

    move-object v0, v1

    move-object v1, v12

    :goto_d
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x0

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1c

    invoke-static {v0}, Lcom/baidu/location/k;->a(Ljava/lang/String;)V

    :cond_1c
    :try_start_1c
    new-instance v7, Ljava/io/RandomAccessFile;

    const-string/jumbo v0, "rw"

    invoke-direct {v7, v2, v0}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-wide/16 v2, 0x4

    invoke-virtual {v7, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v8

    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v9

    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v3

    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v2

    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v4

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    move v6, v0

    move v0, v4

    :goto_43
    sget v4, Lcom/baidu/location/k;->b:I

    if-le v6, v4, :cond_12d

    sget-object v4, Lcom/baidu/location/k;->do:Ljava/lang/String;

    const-string/jumbo v10, "write new data..."

    invoke-static {v4, v10}, Lcom/baidu/location/j;->if(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_12a

    add-int/lit8 v4, v0, 0x1

    :goto_53
    if-ge v3, v8, :cond_cb

    mul-int v0, v9, v3

    add-int/lit16 v0, v0, 0x80

    int-to-long v10, v0

    invoke-virtual {v7, v10, v11}, Ljava/io/RandomAccessFile;->seek(J)V

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x0

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v10, 0x0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v10, v0

    invoke-virtual {v7, v10}, Ljava/io/RandomAccessFile;->writeInt(I)V

    const/4 v10, 0x0

    array-length v11, v0

    invoke-virtual {v7, v0, v10, v11}, Ljava/io/RandomAccessFile;->write([BII)V

    const/4 v0, 0x0

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_87
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_87} :catch_127

    add-int/lit8 v0, v3, 0x1

    move v12, v2

    move v2, v0

    move v0, v12

    :goto_8c
    add-int/lit8 v3, v6, -0x1

    move v6, v3

    move v3, v2

    move v2, v0

    move v0, v4

    goto :goto_43

    :cond_93
    const/4 v0, 0x2

    if-ne p0, v0, :cond_a8

    sget-object v1, Lcom/baidu/location/k;->t:Ljava/lang/String;

    if-eqz p1, :cond_a1

    sget-object v0, Lcom/baidu/location/k;->x:Ljava/util/ArrayList;

    move-object v12, v0

    move-object v0, v1

    move-object v1, v12

    goto/16 :goto_d

    :cond_a1
    sget-object v0, Lcom/baidu/location/k;->j:Ljava/util/ArrayList;

    move-object v12, v0

    move-object v0, v1

    move-object v1, v12

    goto/16 :goto_d

    :cond_a8
    const/4 v0, 0x3

    if-ne p0, v0, :cond_bd

    sget-object v1, Lcom/baidu/location/k;->k:Ljava/lang/String;

    if-eqz p1, :cond_b6

    sget-object v0, Lcom/baidu/location/k;->j:Ljava/util/ArrayList;

    move-object v12, v0

    move-object v0, v1

    move-object v1, v12

    goto/16 :goto_d

    :cond_b6
    sget-object v0, Lcom/baidu/location/k;->r:Ljava/util/ArrayList;

    move-object v12, v0

    move-object v0, v1

    move-object v1, v12

    goto/16 :goto_d

    :cond_bd
    const/4 v0, 0x4

    if-ne p0, v0, :cond_7

    sget-object v1, Lcom/baidu/location/k;->p:Ljava/lang/String;

    if-eqz p1, :cond_7

    sget-object v0, Lcom/baidu/location/k;->r:Ljava/util/ArrayList;

    move-object v12, v0

    move-object v0, v1

    move-object v1, v12

    goto/16 :goto_d

    :cond_cb
    if-eqz p1, :cond_106

    mul-int v0, v2, v9

    add-int/lit16 v0, v0, 0x80

    int-to-long v10, v0

    :try_start_d2
    invoke-virtual {v7, v10, v11}, Ljava/io/RandomAccessFile;->seek(J)V

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x0

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v10, 0x0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v10, v0

    invoke-virtual {v7, v10}, Ljava/io/RandomAccessFile;->writeInt(I)V

    const/4 v10, 0x0

    array-length v11, v0

    invoke-virtual {v7, v0, v10, v11}, Ljava/io/RandomAccessFile;->write([BII)V

    const/4 v0, 0x0

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v0, v2, 0x1

    if-le v0, v3, :cond_104

    const/4 v0, 0x0

    :cond_104
    move v2, v3

    goto :goto_8c

    :cond_106
    const/4 v0, 0x1

    move v1, v0

    move v0, v4

    :goto_109
    const-wide/16 v4, 0xc

    invoke-virtual {v7, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {v7, v3}, Ljava/io/RandomAccessFile;->writeInt(I)V

    invoke-virtual {v7, v2}, Ljava/io/RandomAccessFile;->writeInt(I)V

    invoke-virtual {v7, v0}, Ljava/io/RandomAccessFile;->writeInt(I)V

    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->close()V

    if-eqz v1, :cond_7

    const/4 v0, 0x4

    if-ge p0, v0, :cond_7

    add-int/lit8 v0, p0, 0x1

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/baidu/location/k;->a(IZ)V
    :try_end_125
    .catch Ljava/lang/Exception; {:try_start_d2 .. :try_end_125} :catch_127

    goto/16 :goto_7

    :catch_127
    move-exception v0

    goto/16 :goto_7

    :cond_12a
    move v4, v0

    goto/16 :goto_53

    :cond_12d
    move v1, v5

    goto :goto_109
.end method

.method public static a(Lcom/baidu/location/c$a;Lcom/baidu/location/e$c;Landroid/location/Location;Ljava/lang/String;)V
    .registers 8

    const/4 v2, 0x3

    const/4 v0, 0x0

    sget-boolean v1, Lcom/baidu/location/j;->O:Z

    if-nez v1, :cond_7

    :cond_6
    :goto_6
    return-void

    :cond_7
    sget v1, Lcom/baidu/location/j;->I:I

    if-ne v1, v2, :cond_18

    invoke-static {p2, p1}, Lcom/baidu/location/k;->a(Landroid/location/Location;Lcom/baidu/location/e$c;)Z

    move-result v1

    if-nez v1, :cond_18

    const/4 v1, 0x0

    invoke-static {p2, v1}, Lcom/baidu/location/k;->a(Landroid/location/Location;Z)Z

    move-result v1

    if-eqz v1, :cond_6

    :cond_18
    if-eqz p0, :cond_3e

    invoke-virtual {p0}, Lcom/baidu/location/c$a;->do()Z

    move-result v1

    if-eqz v1, :cond_3e

    invoke-static {p2, p1}, Lcom/baidu/location/k;->a(Landroid/location/Location;Lcom/baidu/location/e$c;)Z

    move-result v1

    if-nez v1, :cond_27

    move-object p1, v0

    :cond_27
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, p3, v0}, Lcom/baidu/location/j;->a(Lcom/baidu/location/c$a;Lcom/baidu/location/e$c;Landroid/location/Location;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-static {v0}, Lcom/baidu/location/Jni;->if(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/location/k;->for(Ljava/lang/String;)V

    sput-object p2, Lcom/baidu/location/k;->q:Landroid/location/Location;

    sput-object p2, Lcom/baidu/location/k;->e:Landroid/location/Location;

    if-eqz p1, :cond_6

    sput-object p1, Lcom/baidu/location/k;->g:Lcom/baidu/location/e$c;

    goto :goto_6

    :cond_3e
    if-eqz p1, :cond_86

    invoke-virtual {p1}, Lcom/baidu/location/e$c;->if()Z

    move-result v1

    if-eqz v1, :cond_86

    invoke-static {p2, p1}, Lcom/baidu/location/k;->a(Landroid/location/Location;Lcom/baidu/location/e$c;)Z

    move-result v1

    if-eqz v1, :cond_86

    invoke-static {p2}, Lcom/baidu/location/k;->a(Landroid/location/Location;)Z

    move-result v1

    if-nez v1, :cond_ae

    :goto_52
    const/4 v1, 0x2

    invoke-static {v0, p1, p2, p3, v1}, Lcom/baidu/location/j;->a(Lcom/baidu/location/c$a;Lcom/baidu/location/e$c;Landroid/location/Location;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-static {v0}, Lcom/baidu/location/Jni;->if(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/baidu/location/k;->do:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "upload size:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baidu/location/j;->if(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/baidu/location/k;->do(Ljava/lang/String;)V

    sput-object p2, Lcom/baidu/location/k;->a:Landroid/location/Location;

    sput-object p2, Lcom/baidu/location/k;->e:Landroid/location/Location;

    if-eqz p1, :cond_6

    sput-object p1, Lcom/baidu/location/k;->g:Lcom/baidu/location/e$c;

    goto :goto_6

    :cond_86
    invoke-static {p2}, Lcom/baidu/location/k;->a(Landroid/location/Location;)Z

    move-result v1

    if-nez v1, :cond_8d

    move-object p0, v0

    :cond_8d
    invoke-static {p2, p1}, Lcom/baidu/location/k;->a(Landroid/location/Location;Lcom/baidu/location/e$c;)Z

    move-result v1

    if-nez v1, :cond_ac

    :goto_93
    if-nez p0, :cond_97

    if-eqz v0, :cond_6

    :cond_97
    invoke-static {p0, v0, p2, p3, v2}, Lcom/baidu/location/j;->a(Lcom/baidu/location/c$a;Lcom/baidu/location/e$c;Landroid/location/Location;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-static {v1}, Lcom/baidu/location/Jni;->if(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/baidu/location/k;->int(Ljava/lang/String;)V

    sput-object p2, Lcom/baidu/location/k;->e:Landroid/location/Location;

    if-eqz v0, :cond_6

    sput-object v0, Lcom/baidu/location/k;->g:Lcom/baidu/location/e$c;

    goto/16 :goto_6

    :cond_ac
    move-object v0, p1

    goto :goto_93

    :cond_ae
    move-object v0, p0

    goto :goto_52
.end method

.method public static a(Ljava/lang/String;)V
    .registers 5

    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_4d

    new-instance v1, Ljava/io/File;

    sget-object v2, Lcom/baidu/location/f;->ac:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1b

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    :cond_1b
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    move-result v1

    if-nez v1, :cond_22

    const/4 v0, 0x0

    :cond_22
    new-instance v1, Ljava/io/RandomAccessFile;

    const-string/jumbo v2, "rw"

    invoke-direct {v1, v0, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    const/16 v0, 0x20

    invoke-virtual {v1, v0}, Ljava/io/RandomAccessFile;->writeInt(I)V

    const/16 v0, 0x800

    invoke-virtual {v1, v0}, Ljava/io/RandomAccessFile;->writeInt(I)V

    const/16 v0, 0x410

    invoke-virtual {v1, v0}, Ljava/io/RandomAccessFile;->writeInt(I)V

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/io/RandomAccessFile;->writeInt(I)V

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/io/RandomAccessFile;->writeInt(I)V

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/io/RandomAccessFile;->writeInt(I)V

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_4d} :catch_4e

    :cond_4d
    :goto_4d
    return-void

    :catch_4e
    move-exception v0

    goto :goto_4d
.end method

.method public static a(Ljava/lang/String;I)V
    .registers 2

    return-void
.end method

.method public static a(Ljava/lang/String;IZ)V
    .registers 3

    return-void
.end method

.method private static a(IIIIJ)Z
    .registers 9

    const/16 v2, 0x400

    const/4 v0, 0x0

    if-ltz p0, :cond_7

    if-lt p0, p2, :cond_8

    :cond_7
    :goto_7
    return v0

    :cond_8
    if-ltz p1, :cond_7

    if-gt p1, p2, :cond_7

    if-ltz p2, :cond_7

    if-gt p2, v2, :cond_7

    const/16 v1, 0x80

    if-lt p3, v1, :cond_7

    if-gt p3, v2, :cond_7

    const/4 v0, 0x1

    goto :goto_7
.end method

.method private static a(Landroid/location/Location;)Z
    .registers 9

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p0, :cond_6

    move v0, v1

    :cond_5
    :goto_5
    return v0

    :cond_6
    sget-object v2, Lcom/baidu/location/k;->q:Landroid/location/Location;

    if-eqz v2, :cond_e

    sget-object v2, Lcom/baidu/location/k;->e:Landroid/location/Location;

    if-nez v2, :cond_11

    :cond_e
    sput-object p0, Lcom/baidu/location/k;->q:Landroid/location/Location;

    goto :goto_5

    :cond_11
    sget-object v2, Lcom/baidu/location/k;->q:Landroid/location/Location;

    invoke-virtual {p0, v2}, Landroid/location/Location;->distanceTo(Landroid/location/Location;)F

    move-result v2

    float-to-double v2, v2

    sget v4, Lcom/baidu/location/j;->u:F

    float-to-double v4, v4

    mul-double/2addr v4, v2

    mul-double/2addr v4, v2

    sget v6, Lcom/baidu/location/j;->s:F

    float-to-double v6, v6

    mul-double/2addr v2, v6

    add-double/2addr v2, v4

    sget v4, Lcom/baidu/location/j;->r:I

    int-to-double v4, v4

    add-double/2addr v2, v4

    sget-object v4, Lcom/baidu/location/k;->e:Landroid/location/Location;

    invoke-virtual {p0, v4}, Landroid/location/Location;->distanceTo(Landroid/location/Location;)F

    move-result v4

    float-to-double v4, v4

    cmpl-double v2, v4, v2

    if-gtz v2, :cond_5

    move v0, v1

    goto :goto_5
.end method

.method private static a(Landroid/location/Location;Lcom/baidu/location/e$c;)Z
    .registers 5

    const/4 v1, 0x1

    const/4 v0, 0x0

    if-eqz p0, :cond_12

    if-eqz p1, :cond_12

    iget-object v2, p1, Lcom/baidu/location/e$c;->for:Ljava/util/List;

    if-eqz v2, :cond_12

    iget-object v2, p1, Lcom/baidu/location/e$c;->for:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_13

    :cond_12
    :goto_12
    return v0

    :cond_13
    sget-object v2, Lcom/baidu/location/k;->g:Lcom/baidu/location/e$c;

    invoke-virtual {p1, v2}, Lcom/baidu/location/e$c;->do(Lcom/baidu/location/e$c;)Z

    move-result v2

    if-nez v2, :cond_12

    sget-object v0, Lcom/baidu/location/k;->a:Landroid/location/Location;

    if-nez v0, :cond_23

    sput-object p0, Lcom/baidu/location/k;->a:Landroid/location/Location;

    move v0, v1

    goto :goto_12

    :cond_23
    move v0, v1

    goto :goto_12
.end method

.method public static a(Landroid/location/Location;Z)Z
    .registers 3

    sget-object v0, Lcom/baidu/location/k;->e:Landroid/location/Location;

    invoke-static {v0, p0, p1}, Lcom/baidu/location/b;->a(Landroid/location/Location;Landroid/location/Location;Z)Z

    move-result v0

    return v0
.end method

.method public static a(Ljava/lang/String;Ljava/util/List;)Z
    .registers 13

    const/4 v1, 0x0

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_e

    move v0, v1

    :goto_d
    return v0

    :cond_e
    :try_start_e
    new-instance v5, Ljava/io/RandomAccessFile;

    const-string/jumbo v2, "rw"

    invoke-direct {v5, v0, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-wide/16 v2, 0x8

    invoke-virtual {v5, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v6

    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v3

    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v2

    sget v0, Lcom/baidu/location/k;->o:I

    new-array v7, v0, [B

    sget v0, Lcom/baidu/location/k;->b:I
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_2d} :catch_76

    add-int/lit8 v0, v0, 0x1

    move v4, v3

    move v3, v0

    move v0, v1

    :goto_32
    if-lez v3, :cond_65

    if-lez v4, :cond_65

    if-ge v4, v2, :cond_39

    move v2, v1

    :cond_39
    add-int/lit8 v8, v4, -0x1

    mul-int/2addr v8, v6

    add-int/lit16 v8, v8, 0x80

    int-to-long v8, v8

    :try_start_3f
    invoke-virtual {v5, v8, v9}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v8

    if-lez v8, :cond_60

    if-ge v8, v6, :cond_60

    const/4 v9, 0x0

    invoke-virtual {v5, v7, v9, v8}, Ljava/io/RandomAccessFile;->read([BII)I

    add-int/lit8 v9, v8, -0x1

    aget-byte v9, v7, v9

    if-nez v9, :cond_60

    new-instance v9, Ljava/lang/String;

    const/4 v10, 0x0

    add-int/lit8 v8, v8, -0x1

    invoke-direct {v9, v7, v10, v8}, Ljava/lang/String;-><init>([BII)V

    invoke-interface {p1, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    :cond_60
    add-int/lit8 v3, v3, -0x1

    add-int/lit8 v4, v4, -0x1

    goto :goto_32

    :cond_65
    const-wide/16 v6, 0xc

    invoke-virtual {v5, v6, v7}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {v5, v4}, Ljava/io/RandomAccessFile;->writeInt(I)V

    invoke-virtual {v5, v2}, Ljava/io/RandomAccessFile;->writeInt(I)V

    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->close()V
    :try_end_73
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_73} :catch_74

    goto :goto_d

    :catch_74
    move-exception v1

    goto :goto_d

    :catch_76
    move-exception v0

    move v0, v1

    goto :goto_d
.end method

.method public static do()Ljava/lang/String;
    .registers 1

    invoke-static {}, Lcom/baidu/location/k;->int()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static do(Ljava/lang/String;)V
    .registers 1

    invoke-static {p0}, Lcom/baidu/location/k;->if(Ljava/lang/String;)V

    return-void
.end method

.method public static for()V
    .registers 0

    return-void
.end method

.method private static for(Ljava/lang/String;)V
    .registers 1

    invoke-static {p0}, Lcom/baidu/location/k;->if(Ljava/lang/String;)V

    return-void
.end method

.method public static if()Ljava/lang/String;
    .registers 5

    const/4 v0, 0x0

    sget-object v1, Lcom/baidu/location/k;->t:Ljava/lang/String;

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_45

    :try_start_e
    new-instance v1, Ljava/io/RandomAccessFile;

    const-string/jumbo v3, "rw"

    invoke-direct {v1, v2, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-wide/16 v2, 0x14

    invoke-virtual {v1, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v2

    const/16 v3, 0x80

    if-le v2, v3, :cond_45

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "&p1="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-wide/16 v2, 0x14

    invoke-virtual {v1, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/io/RandomAccessFile;->writeInt(I)V

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_43} :catch_44

    :cond_43
    :goto_43
    return-object v0

    :catch_44
    move-exception v1

    :cond_45
    sget-object v1, Lcom/baidu/location/k;->k:Ljava/lang/String;

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_89

    :try_start_52
    new-instance v1, Ljava/io/RandomAccessFile;

    const-string/jumbo v3, "rw"

    invoke-direct {v1, v2, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-wide/16 v2, 0x14

    invoke-virtual {v1, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v2

    const/16 v3, 0x100

    if-le v2, v3, :cond_89

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "&p2="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-wide/16 v2, 0x14

    invoke-virtual {v1, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/io/RandomAccessFile;->writeInt(I)V

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_87
    .catch Ljava/lang/Exception; {:try_start_52 .. :try_end_87} :catch_88

    goto :goto_43

    :catch_88
    move-exception v1

    :cond_89
    sget-object v1, Lcom/baidu/location/k;->p:Ljava/lang/String;

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_43

    :try_start_96
    new-instance v1, Ljava/io/RandomAccessFile;

    const-string/jumbo v3, "rw"

    invoke-direct {v1, v2, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-wide/16 v2, 0x14

    invoke-virtual {v1, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v2

    const/16 v3, 0x200

    if-le v2, v3, :cond_43

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "&p3="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-wide/16 v2, 0x14

    invoke-virtual {v1, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/io/RandomAccessFile;->writeInt(I)V

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_cb
    .catch Ljava/lang/Exception; {:try_start_96 .. :try_end_cb} :catch_cd

    goto/16 :goto_43

    :catch_cd
    move-exception v1

    goto/16 :goto_43
.end method

.method public static if(Ljava/lang/String;)V
    .registers 6

    const/4 v4, 0x0

    sget v1, Lcom/baidu/location/j;->l:I

    const/4 v0, 0x1

    if-ne v1, v0, :cond_b

    sget-object v0, Lcom/baidu/location/k;->x:Ljava/util/ArrayList;

    :goto_8
    if-nez v0, :cond_17

    :cond_a
    return-void

    :cond_b
    const/4 v0, 0x2

    if-ne v1, v0, :cond_11

    sget-object v0, Lcom/baidu/location/k;->j:Ljava/util/ArrayList;

    goto :goto_8

    :cond_11
    const/4 v0, 0x3

    if-ne v1, v0, :cond_a

    sget-object v0, Lcom/baidu/location/k;->r:Ljava/util/ArrayList;

    goto :goto_8

    :cond_17
    sget-object v2, Lcom/baidu/location/k;->do:Ljava/lang/String;

    const-string/jumbo v3, "insert2HighPriorityQueue..."

    invoke-static {v2, v3}, Lcom/baidu/location/j;->if(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    sget v3, Lcom/baidu/location/k;->try:I

    if-gt v2, v3, :cond_2a

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2a
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    sget v3, Lcom/baidu/location/k;->try:I

    if-lt v2, v3, :cond_35

    invoke-static {v1, v4}, Lcom/baidu/location/k;->a(IZ)V

    :cond_35
    :goto_35
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    sget v2, Lcom/baidu/location/k;->try:I

    if-le v1, v2, :cond_a

    invoke-interface {v0, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_35
.end method

.method public static int()Ljava/lang/String;
    .registers 5

    const/4 v3, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x1

    move v4, v0

    move-object v0, v1

    move v1, v4

    :goto_6
    const/4 v2, 0x5

    if-ge v1, v2, :cond_13

    invoke-static {v1}, Lcom/baidu/location/k;->a(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_10

    :cond_f
    :goto_f
    return-object v0

    :cond_10
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_13
    sget-object v1, Lcom/baidu/location/k;->do:Ljava/lang/String;

    const-string/jumbo v2, "read the old file data..."

    invoke-static {v1, v2}, Lcom/baidu/location/j;->if(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/baidu/location/k;->r:Ljava/util/ArrayList;

    sget v2, Lcom/baidu/location/k;->char:I

    invoke-static {v1, v2}, Lcom/baidu/location/k;->a(Ljava/util/List;I)I

    sget-object v1, Lcom/baidu/location/k;->r:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_37

    sget-object v0, Lcom/baidu/location/k;->r:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v1, Lcom/baidu/location/k;->r:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_37
    if-nez v0, :cond_f

    sget-object v1, Lcom/baidu/location/k;->r:Ljava/util/ArrayList;

    sget v2, Lcom/baidu/location/k;->c:I

    invoke-static {v1, v2}, Lcom/baidu/location/k;->a(Ljava/util/List;I)I

    sget-object v1, Lcom/baidu/location/k;->r:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_55

    sget-object v0, Lcom/baidu/location/k;->r:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v1, Lcom/baidu/location/k;->r:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_55
    if-nez v0, :cond_f

    sget-object v1, Lcom/baidu/location/k;->r:Ljava/util/ArrayList;

    sget v2, Lcom/baidu/location/k;->v:I

    invoke-static {v1, v2}, Lcom/baidu/location/k;->a(Ljava/util/List;I)I

    sget-object v1, Lcom/baidu/location/k;->r:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_f

    sget-object v0, Lcom/baidu/location/k;->r:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v1, Lcom/baidu/location/k;->r:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_f
.end method

.method private static int(Ljava/lang/String;)V
    .registers 1

    invoke-static {p0}, Lcom/baidu/location/k;->if(Ljava/lang/String;)V

    return-void
.end method

.method public static new()V
    .registers 0

    return-void
.end method
