.class public final Lcom/google/android/gms/drive/internal/bt;
.super Lcom/google/android/gms/internal/ss;


# static fields
.field public static final a:[Lcom/google/android/gms/drive/internal/bt;


# instance fields
.field public b:I

.field public c:Ljava/lang/String;

.field public d:J

.field public e:J

.field private f:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/android/gms/drive/internal/bt;

    sput-object v0, Lcom/google/android/gms/drive/internal/bt;->a:[Lcom/google/android/gms/drive/internal/bt;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    const-wide/16 v1, -0x1

    invoke-direct {p0}, Lcom/google/android/gms/internal/ss;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/drive/internal/bt;->b:I

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/drive/internal/bt;->c:Ljava/lang/String;

    iput-wide v1, p0, Lcom/google/android/gms/drive/internal/bt;->d:J

    iput-wide v1, p0, Lcom/google/android/gms/drive/internal/bt;->e:J

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/drive/internal/bt;->f:I

    return-void
.end method

.method public static a([B)Lcom/google/android/gms/drive/internal/bt;
    .registers 2

    new-instance v0, Lcom/google/android/gms/drive/internal/bt;

    invoke-direct {v0}, Lcom/google/android/gms/drive/internal/bt;-><init>()V

    invoke-static {v0, p0}, Lcom/google/android/gms/internal/ss;->a(Lcom/google/android/gms/internal/ss;[B)Lcom/google/android/gms/internal/ss;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/drive/internal/bt;

    return-object v0
.end method


# virtual methods
.method public a()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/drive/internal/bt;->f:I

    if-gez v0, :cond_7

    invoke-virtual {p0}, Lcom/google/android/gms/drive/internal/bt;->b()I

    :cond_7
    iget v0, p0, Lcom/google/android/gms/drive/internal/bt;->f:I

    return v0
.end method

.method public a(Lcom/google/android/gms/internal/sj;)Lcom/google/android/gms/drive/internal/bt;
    .registers 4

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/sj;->a()I

    move-result v0

    sparse-switch v0, :sswitch_data_2a

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/sv;->a(Lcom/google/android/gms/internal/sj;I)Z

    move-result v0

    if-nez v0, :cond_0

    :sswitch_d
    return-object p0

    :sswitch_e
    invoke-virtual {p1}, Lcom/google/android/gms/internal/sj;->e()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/drive/internal/bt;->b:I

    goto :goto_0

    :sswitch_15
    invoke-virtual {p1}, Lcom/google/android/gms/internal/sj;->g()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/drive/internal/bt;->c:Ljava/lang/String;

    goto :goto_0

    :sswitch_1c
    invoke-virtual {p1}, Lcom/google/android/gms/internal/sj;->h()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/drive/internal/bt;->d:J

    goto :goto_0

    :sswitch_23
    invoke-virtual {p1}, Lcom/google/android/gms/internal/sj;->h()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/drive/internal/bt;->e:J

    goto :goto_0

    :sswitch_data_2a
    .sparse-switch
        0x0 -> :sswitch_d
        0x8 -> :sswitch_e
        0x12 -> :sswitch_15
        0x18 -> :sswitch_1c
        0x20 -> :sswitch_23
    .end sparse-switch
.end method

.method public a(Lcom/google/android/gms/internal/sk;)V
    .registers 5

    const/4 v0, 0x1

    iget v1, p0, Lcom/google/android/gms/drive/internal/bt;->b:I

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/sk;->a(II)V

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/android/gms/drive/internal/bt;->c:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/sk;->a(ILjava/lang/String;)V

    const/4 v0, 0x3

    iget-wide v1, p0, Lcom/google/android/gms/drive/internal/bt;->d:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/android/gms/internal/sk;->b(IJ)V

    const/4 v0, 0x4

    iget-wide v1, p0, Lcom/google/android/gms/drive/internal/bt;->e:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/android/gms/internal/sk;->b(IJ)V

    return-void
.end method

.method public b()I
    .registers 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    iget v2, p0, Lcom/google/android/gms/drive/internal/bt;->b:I

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/sk;->b(II)I

    move-result v1

    add-int/2addr v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/drive/internal/bt;->c:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/sk;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    const/4 v1, 0x3

    iget-wide v2, p0, Lcom/google/android/gms/drive/internal/bt;->d:J

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/sk;->d(IJ)I

    move-result v1

    add-int/2addr v0, v1

    const/4 v1, 0x4

    iget-wide v2, p0, Lcom/google/android/gms/drive/internal/bt;->e:J

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/sk;->d(IJ)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/drive/internal/bt;->f:I

    return v0
.end method

.method public synthetic b(Lcom/google/android/gms/internal/sj;)Lcom/google/android/gms/internal/ss;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/google/android/gms/drive/internal/bt;->a(Lcom/google/android/gms/internal/sj;)Lcom/google/android/gms/drive/internal/bt;

    move-result-object v0

    return-object v0
.end method
