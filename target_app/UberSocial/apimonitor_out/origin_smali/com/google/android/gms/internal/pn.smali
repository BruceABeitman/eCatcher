.class final Lcom/google/android/gms/internal/pn;
.super Lcom/google/android/gms/internal/gn;


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/pj;

.field private final c:I

.field private final d:[Ljava/lang/String;

.field private final e:Landroid/app/PendingIntent;

.field private final f:I


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/pj;ILcom/google/android/gms/location/j;ILandroid/app/PendingIntent;)V
    .registers 7

    const/4 v0, 0x1

    iput-object p1, p0, Lcom/google/android/gms/internal/pn;->a:Lcom/google/android/gms/internal/pj;

    invoke-direct {p0, p1, p3}, Lcom/google/android/gms/internal/gn;-><init>(Lcom/google/android/gms/internal/gl;Ljava/lang/Object;)V

    if-ne p2, v0, :cond_19

    :goto_8
    invoke-static {v0}, Lcom/google/android/gms/internal/gj;->a(Z)V

    iput p2, p0, Lcom/google/android/gms/internal/pn;->f:I

    invoke-static {p4}, Lcom/google/android/gms/location/m;->a(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/pn;->c:I

    iput-object p5, p0, Lcom/google/android/gms/internal/pn;->e:Landroid/app/PendingIntent;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/pn;->d:[Ljava/lang/String;

    return-void

    :cond_19
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/pj;ILcom/google/android/gms/location/j;I[Ljava/lang/String;)V
    .registers 7

    iput-object p1, p0, Lcom/google/android/gms/internal/pn;->a:Lcom/google/android/gms/internal/pj;

    invoke-direct {p0, p1, p3}, Lcom/google/android/gms/internal/gn;-><init>(Lcom/google/android/gms/internal/gl;Ljava/lang/Object;)V

    const/4 v0, 0x2

    if-ne p2, v0, :cond_1a

    const/4 v0, 0x1

    :goto_9
    invoke-static {v0}, Lcom/google/android/gms/internal/gj;->a(Z)V

    iput p2, p0, Lcom/google/android/gms/internal/pn;->f:I

    invoke-static {p4}, Lcom/google/android/gms/location/m;->a(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/pn;->c:I

    iput-object p5, p0, Lcom/google/android/gms/internal/pn;->d:[Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/pn;->e:Landroid/app/PendingIntent;

    return-void

    :cond_1a
    const/4 v0, 0x0

    goto :goto_9
.end method


# virtual methods
.method protected a(Lcom/google/android/gms/location/j;)V
    .registers 5

    if-eqz p1, :cond_21

    iget v0, p0, Lcom/google/android/gms/internal/pn;->f:I

    packed-switch v0, :pswitch_data_32

    const-string v0, "LocationClientImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported action: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/android/gms/internal/pn;->f:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :cond_21
    :goto_21
    return-void

    :pswitch_22
    iget v0, p0, Lcom/google/android/gms/internal/pn;->c:I

    iget-object v1, p0, Lcom/google/android/gms/internal/pn;->e:Landroid/app/PendingIntent;

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/location/j;->a(ILandroid/app/PendingIntent;)V

    goto :goto_21

    :pswitch_2a
    iget v0, p0, Lcom/google/android/gms/internal/pn;->c:I

    iget-object v1, p0, Lcom/google/android/gms/internal/pn;->d:[Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/location/j;->a(I[Ljava/lang/String;)V

    goto :goto_21

    :pswitch_data_32
    .packed-switch 0x1
        :pswitch_22
        :pswitch_2a
    .end packed-switch
.end method

.method protected bridge synthetic a(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lcom/google/android/gms/location/j;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/pn;->a(Lcom/google/android/gms/location/j;)V

    return-void
.end method

.method protected c()V
    .registers 1

    return-void
.end method
