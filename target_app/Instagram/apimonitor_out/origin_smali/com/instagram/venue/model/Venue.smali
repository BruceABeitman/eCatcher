.class public Lcom/instagram/venue/model/Venue;
.super Ljava/lang/Object;
.source "Venue.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/instagram/venue/model/Venue;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:Ljava/lang/String;

.field d:Ljava/lang/String;

.field e:Ljava/lang/String;

.field f:Ljava/lang/String;

.field g:Ljava/lang/Double;

.field h:Ljava/lang/Double;

.field private i:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/instagram/venue/model/a;

    invoke-direct {v0}, Lcom/instagram/venue/model/a;-><init>()V

    sput-object v0, Lcom/instagram/venue/model/Venue;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 4

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/venue/model/Venue;->a:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/venue/model/Venue;->b:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/venue/model/Venue;->c:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/venue/model/Venue;->d:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/venue/model/Venue;->f:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    iput-object v0, p0, Lcom/instagram/venue/model/Venue;->g:Ljava/lang/Double;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    iput-object v0, p0, Lcom/instagram/venue/model/Venue;->h:Ljava/lang/Double;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;B)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/instagram/venue/model/Venue;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private a(Lcom/instagram/venue/model/Venue;)V
    .registers 3

    iget-object v0, p1, Lcom/instagram/venue/model/Venue;->a:Ljava/lang/String;

    if-eqz v0, :cond_8

    iget-object v0, p1, Lcom/instagram/venue/model/Venue;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/instagram/venue/model/Venue;->a:Ljava/lang/String;

    :cond_8
    iget-object v0, p1, Lcom/instagram/venue/model/Venue;->b:Ljava/lang/String;

    if-eqz v0, :cond_10

    iget-object v0, p1, Lcom/instagram/venue/model/Venue;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/instagram/venue/model/Venue;->b:Ljava/lang/String;

    :cond_10
    iget-object v0, p1, Lcom/instagram/venue/model/Venue;->c:Ljava/lang/String;

    if-eqz v0, :cond_18

    iget-object v0, p1, Lcom/instagram/venue/model/Venue;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/instagram/venue/model/Venue;->c:Ljava/lang/String;

    :cond_18
    iget-object v0, p1, Lcom/instagram/venue/model/Venue;->d:Ljava/lang/String;

    if-eqz v0, :cond_20

    iget-object v0, p1, Lcom/instagram/venue/model/Venue;->d:Ljava/lang/String;

    iput-object v0, p0, Lcom/instagram/venue/model/Venue;->d:Ljava/lang/String;

    :cond_20
    iget-object v0, p1, Lcom/instagram/venue/model/Venue;->f:Ljava/lang/String;

    if-eqz v0, :cond_28

    iget-object v0, p1, Lcom/instagram/venue/model/Venue;->f:Ljava/lang/String;

    iput-object v0, p0, Lcom/instagram/venue/model/Venue;->f:Ljava/lang/String;

    :cond_28
    iget-object v0, p1, Lcom/instagram/venue/model/Venue;->g:Ljava/lang/Double;

    if-eqz v0, :cond_30

    iget-object v0, p1, Lcom/instagram/venue/model/Venue;->g:Ljava/lang/Double;

    iput-object v0, p0, Lcom/instagram/venue/model/Venue;->g:Ljava/lang/Double;

    :cond_30
    iget-object v0, p1, Lcom/instagram/venue/model/Venue;->h:Ljava/lang/Double;

    if-eqz v0, :cond_38

    iget-object v0, p1, Lcom/instagram/venue/model/Venue;->h:Ljava/lang/Double;

    iput-object v0, p0, Lcom/instagram/venue/model/Venue;->h:Ljava/lang/Double;

    :cond_38
    return-void
.end method

.method public static f(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    const-string v0, "&apos;"

    const-string v1, "\'"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "&quot;"

    const-string v2, "\""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "&amp;"

    const-string v2, "&"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "&gt;"

    const-string v2, ">"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "&lt;"

    const-string v2, "<"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method final a()Lcom/instagram/venue/model/Venue;
    .registers 3

    iget-object v0, p0, Lcom/instagram/venue/model/Venue;->e:Ljava/lang/String;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/instagram/venue/model/Venue;->e:Ljava/lang/String;

    iput-object v0, p0, Lcom/instagram/venue/model/Venue;->d:Ljava/lang/String;

    :cond_8
    invoke-static {}, Lcom/instagram/venue/model/b;->a()Lcom/instagram/venue/model/b;

    move-result-object v0

    invoke-virtual {p0}, Lcom/instagram/venue/model/Venue;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/venue/model/b;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/venue/model/Venue;

    if-eqz v0, :cond_1c

    invoke-direct {v0, p0}, Lcom/instagram/venue/model/Venue;->a(Lcom/instagram/venue/model/Venue;)V

    :goto_1b
    return-object v0

    :cond_1c
    invoke-static {}, Lcom/instagram/venue/model/b;->a()Lcom/instagram/venue/model/b;

    move-result-object v0

    invoke-virtual {p0}, Lcom/instagram/venue/model/Venue;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/instagram/venue/model/b;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p0

    goto :goto_1b
.end method

.method public final a(Ljava/lang/Double;)V
    .registers 2

    iput-object p1, p0, Lcom/instagram/venue/model/Venue;->g:Ljava/lang/Double;

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/instagram/venue/model/Venue;->a:Ljava/lang/String;

    return-void
.end method

.method public final b()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/instagram/venue/model/Venue;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final b(Ljava/lang/Double;)V
    .registers 2

    iput-object p1, p0, Lcom/instagram/venue/model/Venue;->h:Ljava/lang/Double;

    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/instagram/venue/model/Venue;->b:Ljava/lang/String;

    return-void
.end method

.method public final c()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/instagram/venue/model/Venue;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final c(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/instagram/venue/model/Venue;->c:Ljava/lang/String;

    return-void
.end method

.method public final d()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/instagram/venue/model/Venue;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final d(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/instagram/venue/model/Venue;->d:Ljava/lang/String;

    return-void
.end method

.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final e()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/instagram/venue/model/Venue;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final e(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/instagram/venue/model/Venue;->f:Ljava/lang/String;

    return-void
.end method

.method public final f()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/instagram/venue/model/Venue;->f:Ljava/lang/String;

    return-object v0
.end method

.method public final g()Ljava/lang/Double;
    .registers 2

    iget-object v0, p0, Lcom/instagram/venue/model/Venue;->g:Ljava/lang/Double;

    return-object v0
.end method

.method public final h()Ljava/lang/Double;
    .registers 2

    iget-object v0, p0, Lcom/instagram/venue/model/Venue;->h:Ljava/lang/Double;

    return-object v0
.end method

.method public final i()Z
    .registers 2

    iget-boolean v0, p0, Lcom/instagram/venue/model/Venue;->i:Z

    return v0
.end method

.method public final j()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/instagram/venue/model/Venue;->i:Z

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    iget-object v0, p0, Lcom/instagram/venue/model/Venue;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/instagram/venue/model/Venue;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/instagram/venue/model/Venue;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/instagram/venue/model/Venue;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/instagram/venue/model/Venue;->f:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/instagram/venue/model/Venue;->g:Ljava/lang/Double;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/instagram/venue/model/Venue;->h:Ljava/lang/Double;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    return-void
.end method
