.class public final Lcom/spotify/mobile/android/spotlets/artist/c;
.super Lcom/spotify/mobile/android/spotlets/artist/a;
.source "SourceFile"


# instance fields
.field private Y:Landroid/widget/TextView;

.field private Z:Landroid/widget/TextView;

.field private aa:Landroid/widget/ImageView;

.field private ab:Landroid/widget/TextView;

.field private ac:I

.field private final ad:Ljava/text/SimpleDateFormat;

.field private final ae:Ljava/text/SimpleDateFormat;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/ImageView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/TextView;

.field private i:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .registers 4

    invoke-direct {p0}, Lcom/spotify/mobile/android/spotlets/artist/a;-><init>()V

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/c;->ad:Ljava/text/SimpleDateFormat;

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "cccc dd MMMM yyyy"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/c;->ae:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method static synthetic a(Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$Concert;)Ljava/lang/String;
    .registers 2

    invoke-static {p0}, Lcom/spotify/mobile/android/spotlets/artist/c;->b(Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$Concert;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static b(Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$Concert;)Ljava/lang/String;
    .registers 3

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$Concert;->venue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$Concert;->city:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UTF-8"

    invoke-static {v0, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_20
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_20} :catch_22

    move-result-object v0

    :goto_21
    return-object v0

    :catch_22
    move-exception v0

    const-string v0, ""

    goto :goto_21
.end method


# virtual methods
.method protected final E()Landroid/view/View;
    .registers 4

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/artist/c;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030097

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v0, 0x7f0a0310

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/c;->b:Landroid/widget/TextView;

    const v0, 0x7f0a01f8

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/c;->c:Landroid/widget/ImageView;

    const v0, 0x7f0a030e

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/c;->d:Landroid/widget/TextView;

    const v0, 0x7f0a030f

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/c;->e:Landroid/widget/TextView;

    const v0, 0x7f0a0313

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/c;->f:Landroid/widget/TextView;

    const v0, 0x7f0a0314

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/c;->g:Landroid/widget/TextView;

    const v0, 0x7f0a0315

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/c;->h:Landroid/widget/TextView;

    const v0, 0x7f0a0316

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/c;->i:Landroid/widget/Button;

    const v0, 0x7f0a0317

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/c;->Y:Landroid/widget/TextView;

    const v0, 0x7f0a0318

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/c;->Z:Landroid/widget/TextView;

    const v0, 0x7f0a0319

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/c;->aa:Landroid/widget/ImageView;

    const v0, 0x7f0a0312

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/c;->ab:Landroid/widget/TextView;

    return-object v1
.end method

.method public final a(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    const v0, 0x7f0f027b

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(Landroid/os/Bundle;)V
    .registers 4

    invoke-super {p0, p1}, Lcom/spotify/mobile/android/spotlets/artist/a;->a(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/artist/c;->h()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "concert_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/spotify/mobile/android/spotlets/artist/c;->ac:I

    return-void
.end method

.method protected final b(Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel;)V
    .registers 10

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget-object v0, p1, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel;->upcomingConcerts:Ljava/util/List;

    iget v1, p0, Lcom/spotify/mobile/android/spotlets/artist/c;->ac:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$Concert;

    :try_start_d
    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/artist/c;->ad:Ljava/text/SimpleDateFormat;

    iget-object v2, v0, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$Concert;->localtime:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/artist/c;->g:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/spotify/mobile/android/spotlets/artist/c;->ae:Ljava/text/SimpleDateFormat;

    invoke-virtual {v3, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/4 v1, 0x2

    const/4 v3, 0x1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v2, v1, v3, v4}, Ljava/util/Calendar;->getDisplayName(IILjava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/spotify/mobile/android/spotlets/artist/c;->d:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/artist/c;->e:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_4c
    .catch Ljava/text/ParseException; {:try_start_d .. :try_end_4c} :catch_14a

    :goto_4c
    iget-object v1, p1, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel;->info:Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$ArtistInfo;

    iget-object v1, v1, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$ArtistInfo;->portraits:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_7b

    iget-object v1, p1, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel;->info:Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$ArtistInfo;

    iget-object v1, v1, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$ArtistInfo;->portraits:Ljava/util/List;

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$Image;

    iget-object v2, v1, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$Image;->uri:Ljava/lang/String;

    const-class v1, Lcom/spotify/mobile/android/util/df;

    invoke-static {v1}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;)Lcom/spotify/mobile/android/c/a;

    move-result-object v1

    check-cast v1, Lcom/spotify/mobile/android/util/df;

    invoke-virtual {v1}, Lcom/spotify/mobile/android/util/df;->a()Lcom/squareup/picasso/Picasso;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/squareup/picasso/Picasso;->a(Ljava/lang/String;)Lcom/squareup/picasso/ad;

    move-result-object v1

    iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/artist/c;->c:Landroid/widget/ImageView;

    invoke-static {v2}, Lcom/spotify/mobile/android/util/df;->a(Landroid/widget/ImageView;)Lcom/squareup/picasso/ai;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/squareup/picasso/ad;->a(Lcom/squareup/picasso/ai;)V

    :cond_7b
    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/artist/c;->b:Landroid/widget/TextView;

    iget-object v2, p1, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel;->info:Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$ArtistInfo;

    iget-object v2, v2, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$ArtistInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/artist/c;->f:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$Concert;->title:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/artist/c;->h:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v0, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$Concert;->venue:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$Concert;->city:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/artist/c;->Y:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$Concert;->venue:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/artist/c;->Z:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$Concert;->city:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/artist/c;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/spotify/mobile/android/ui/activity/n;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p1, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel;->info:Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$ArtistInfo;

    iget-object v3, v3, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$ArtistInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/artist/c;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const v4, 0x7f0f027b

    invoke-virtual {v3, v4}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p0, v2}, Lcom/spotify/mobile/android/ui/activity/n;->a(Landroid/support/v4/app/Fragment;Ljava/lang/String;)V

    const-class v1, Lcom/spotify/mobile/android/util/df;

    invoke-static {v1}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;)Lcom/spotify/mobile/android/c/a;

    move-result-object v1

    check-cast v1, Lcom/spotify/mobile/android/util/df;

    invoke-virtual {v1}, Lcom/spotify/mobile/android/util/df;->a()Lcom/squareup/picasso/Picasso;

    move-result-object v1

    invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/artist/c;->b(Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$Concert;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "http://maps.googleapis.com/maps/api/staticmap?center="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&zoom=13&scale=2&size=600x300&maptype=roadmap&sensor=false&markers=color:red%7C"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/squareup/picasso/Picasso;->a(Ljava/lang/String;)Lcom/squareup/picasso/ad;

    move-result-object v1

    iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/artist/c;->aa:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Lcom/squareup/picasso/ad;->a(Landroid/widget/ImageView;)V

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/artist/c;->aa:Landroid/widget/ImageView;

    new-instance v2, Lcom/spotify/mobile/android/spotlets/artist/c$1;

    invoke-direct {v2, p0, v0}, Lcom/spotify/mobile/android/spotlets/artist/c$1;-><init>(Lcom/spotify/mobile/android/spotlets/artist/c;Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$Concert;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/artist/c;->i:Landroid/widget/Button;

    new-instance v2, Lcom/spotify/mobile/android/spotlets/artist/c$2;

    invoke-direct {v2, p0, v0}, Lcom/spotify/mobile/android/spotlets/artist/c$2;-><init>(Lcom/spotify/mobile/android/spotlets/artist/c;Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$Concert;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/c;->ab:Landroid/widget/TextView;

    new-instance v1, Lcom/spotify/mobile/android/spotlets/artist/c$3;

    invoke-direct {v1, p0, p1}, Lcom/spotify/mobile/android/spotlets/artist/c$3;-><init>(Lcom/spotify/mobile/android/spotlets/artist/c;Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p1, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel;->info:Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$ArtistInfo;

    iget-object v0, v0, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$ArtistInfo;->name:Ljava/lang/String;

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/artist/c;->ab:Landroid/widget/TextView;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :catch_14a
    move-exception v1

    const-string v2, "Failed to parse date [%s] with formatter [%s]"

    new-array v3, v7, [Ljava/lang/Object;

    iget-object v4, v0, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$Concert;->localtime:Ljava/lang/String;

    aput-object v4, v3, v5

    iget-object v4, p0, Lcom/spotify/mobile/android/spotlets/artist/c;->ad:Ljava/text/SimpleDateFormat;

    aput-object v4, v3, v6

    invoke-static {v1, v2, v3}, Lcom/spotify/mobile/android/util/br;->b(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/artist/c;->g:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4c
.end method
