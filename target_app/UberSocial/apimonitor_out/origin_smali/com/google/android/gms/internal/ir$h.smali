.class public final Lcom/google/android/gms/internal/ir$h;
.super Lcom/google/android/gms/internal/fb;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;
.implements Lcom/google/android/gms/plus/a/b/o;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/internal/ro;

.field private static final a:Ljava/util/HashMap;


# instance fields
.field private final b:Ljava/util/Set;

.field private final c:I

.field private d:Ljava/lang/String;

.field private final e:I

.field private f:I

.field private g:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 10

    const/4 v9, 0x6

    const/4 v8, 0x5

    const/4 v7, 0x4

    const/4 v6, 0x0

    new-instance v0, Lcom/google/android/gms/internal/ro;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ro;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ir$h;->CREATOR:Lcom/google/android/gms/internal/ro;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ir$h;->a:Ljava/util/HashMap;

    sget-object v0, Lcom/google/android/gms/internal/ir$h;->a:Ljava/util/HashMap;

    const-string v1, "label"

    const-string v2, "label"

    invoke-static {v2, v8}, Lcom/google/android/gms/internal/fb$a;->d(Ljava/lang/String;I)Lcom/google/android/gms/internal/fb$a;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/ir$h;->a:Ljava/util/HashMap;

    const-string v1, "type"

    const-string v2, "type"

    new-instance v3, Lcom/google/android/gms/internal/ey;

    invoke-direct {v3}, Lcom/google/android/gms/internal/ey;-><init>()V

    const-string v4, "home"

    invoke-virtual {v3, v4, v6}, Lcom/google/android/gms/internal/ey;->a(Ljava/lang/String;I)Lcom/google/android/gms/internal/ey;

    move-result-object v3

    const-string v4, "work"

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/internal/ey;->a(Ljava/lang/String;I)Lcom/google/android/gms/internal/ey;

    move-result-object v3

    const-string v4, "blog"

    const/4 v5, 0x2

    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/internal/ey;->a(Ljava/lang/String;I)Lcom/google/android/gms/internal/ey;

    move-result-object v3

    const-string v4, "profile"

    const/4 v5, 0x3

    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/internal/ey;->a(Ljava/lang/String;I)Lcom/google/android/gms/internal/ey;

    move-result-object v3

    const-string v4, "other"

    invoke-virtual {v3, v4, v7}, Lcom/google/android/gms/internal/ey;->a(Ljava/lang/String;I)Lcom/google/android/gms/internal/ey;

    move-result-object v3

    const-string v4, "otherProfile"

    invoke-virtual {v3, v4, v8}, Lcom/google/android/gms/internal/ey;->a(Ljava/lang/String;I)Lcom/google/android/gms/internal/ey;

    move-result-object v3

    const-string v4, "contributor"

    invoke-virtual {v3, v4, v9}, Lcom/google/android/gms/internal/ey;->a(Ljava/lang/String;I)Lcom/google/android/gms/internal/ey;

    move-result-object v3

    const-string v4, "website"

    const/4 v5, 0x7

    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/internal/ey;->a(Ljava/lang/String;I)Lcom/google/android/gms/internal/ey;

    move-result-object v3

    invoke-static {v2, v9, v3, v6}, Lcom/google/android/gms/internal/fb$a;->a(Ljava/lang/String;ILcom/google/android/gms/internal/iw;Z)Lcom/google/android/gms/internal/fb$a;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/ir$h;->a:Ljava/util/HashMap;

    const-string v1, "value"

    const-string v2, "value"

    invoke-static {v2, v7}, Lcom/google/android/gms/internal/fb$a;->d(Ljava/lang/String;I)Lcom/google/android/gms/internal/fb$a;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/fb;-><init>()V

    const/4 v0, 0x4

    iput v0, p0, Lcom/google/android/gms/internal/ir$h;->e:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/gms/internal/ir$h;->c:I

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ir$h;->b:Ljava/util/Set;

    return-void
.end method

.method constructor <init>(Ljava/util/Set;ILjava/lang/String;ILjava/lang/String;I)V
    .registers 8

    invoke-direct {p0}, Lcom/google/android/gms/internal/fb;-><init>()V

    const/4 v0, 0x4

    iput v0, p0, Lcom/google/android/gms/internal/ir$h;->e:I

    iput-object p1, p0, Lcom/google/android/gms/internal/ir$h;->b:Ljava/util/Set;

    iput p2, p0, Lcom/google/android/gms/internal/ir$h;->c:I

    iput-object p3, p0, Lcom/google/android/gms/internal/ir$h;->d:Ljava/lang/String;

    iput p4, p0, Lcom/google/android/gms/internal/ir$h;->f:I

    iput-object p5, p0, Lcom/google/android/gms/internal/ir$h;->g:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3

    const/4 v0, 0x0

    return-object v0
.end method

.method public a()Ljava/util/HashMap;
    .registers 2

    sget-object v0, Lcom/google/android/gms/internal/ir$h;->a:Ljava/util/HashMap;

    return-object v0
.end method

.method protected a(Lcom/google/android/gms/internal/fb$a;)Z
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ir$h;->b:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/fb$a;->h()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected b(Lcom/google/android/gms/internal/fb$a;)Ljava/lang/Object;
    .registers 5

    invoke-virtual {p1}, Lcom/google/android/gms/internal/fb$a;->h()I

    move-result v0

    packed-switch v0, :pswitch_data_32

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown safe parcelable id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/fb$a;->h()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_24
    iget-object v0, p0, Lcom/google/android/gms/internal/ir$h;->d:Ljava/lang/String;

    :goto_26
    return-object v0

    :pswitch_27
    iget v0, p0, Lcom/google/android/gms/internal/ir$h;->f:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_26

    :pswitch_2e
    iget-object v0, p0, Lcom/google/android/gms/internal/ir$h;->g:Ljava/lang/String;

    goto :goto_26

    nop

    :pswitch_data_32
    .packed-switch 0x4
        :pswitch_2e
        :pswitch_24
        :pswitch_27
    .end packed-switch
.end method

.method protected b(Ljava/lang/String;)Z
    .registers 3

    const/4 v0, 0x0

    return v0
.end method

.method d()Ljava/util/Set;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ir$h;->b:Ljava/util/Set;

    return-object v0
.end method

.method public describeContents()I
    .registers 2

    sget-object v0, Lcom/google/android/gms/internal/ir$h;->CREATOR:Lcom/google/android/gms/internal/ro;

    const/4 v0, 0x0

    return v0
.end method

.method e()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/ir$h;->c:I

    return v0
.end method

.method public e_()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7

    const/4 v2, 0x1

    const/4 v1, 0x0

    instance-of v0, p1, Lcom/google/android/gms/internal/ir$h;

    if-nez v0, :cond_8

    move v0, v1

    :goto_7
    return v0

    :cond_8
    if-ne p0, p1, :cond_c

    move v0, v2

    goto :goto_7

    :cond_c
    check-cast p1, Lcom/google/android/gms/internal/ir$h;

    sget-object v0, Lcom/google/android/gms/internal/ir$h;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_18
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/fb$a;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ir$h;->a(Lcom/google/android/gms/internal/fb$a;)Z

    move-result v4

    if-eqz v4, :cond_42

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ir$h;->a(Lcom/google/android/gms/internal/fb$a;)Z

    move-result v4

    if-eqz v4, :cond_40

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ir$h;->b(Lcom/google/android/gms/internal/fb$a;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ir$h;->b(Lcom/google/android/gms/internal/fb$a;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    move v0, v1

    goto :goto_7

    :cond_40
    move v0, v1

    goto :goto_7

    :cond_42
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ir$h;->a(Lcom/google/android/gms/internal/fb$a;)Z

    move-result v0

    if-eqz v0, :cond_18

    move v0, v1

    goto :goto_7

    :cond_4a
    move v0, v2

    goto :goto_7
.end method

.method public f()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ir$h;->d:Ljava/lang/String;

    return-object v0
.end method

.method public g()Z
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ir$h;->b:Ljava/util/Set;

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .registers 5

    const/4 v0, 0x0

    sget-object v1, Lcom/google/android/gms/internal/ir$h;->a:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/fb$a;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ir$h;->a(Lcom/google/android/gms/internal/fb$a;)Z

    move-result v3

    if-eqz v3, :cond_2f

    invoke-virtual {v0}, Lcom/google/android/gms/internal/fb$a;->h()I

    move-result v3

    add-int/2addr v1, v3

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ir$h;->b(Lcom/google/android/gms/internal/fb$a;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    :goto_2c
    move v1, v0

    goto :goto_c

    :cond_2e
    return v1

    :cond_2f
    move v0, v1

    goto :goto_2c
.end method

.method public synthetic i()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ir$h;->o()Lcom/google/android/gms/internal/ir$h;

    move-result-object v0

    return-object v0
.end method

.method public j()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x4

    return v0
.end method

.method public k()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/ir$h;->f:I

    return v0
.end method

.method public l()Z
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ir$h;->b:Ljava/util/Set;

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public m()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ir$h;->g:Ljava/lang/String;

    return-object v0
.end method

.method public n()Z
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ir$h;->b:Ljava/util/Set;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public o()Lcom/google/android/gms/internal/ir$h;
    .registers 1

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    sget-object v0, Lcom/google/android/gms/internal/ir$h;->CREATOR:Lcom/google/android/gms/internal/ro;

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/ro;->a(Lcom/google/android/gms/internal/ir$h;Landroid/os/Parcel;I)V

    return-void
.end method
