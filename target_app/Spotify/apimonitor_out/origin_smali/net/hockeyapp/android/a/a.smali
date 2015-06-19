.class public final Lnet/hockeyapp/android/a/a;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lnet/hockeyapp/android/objects/FeedbackMessage;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/text/SimpleDateFormat;

.field private d:Ljava/text/SimpleDateFormat;

.field private e:Ljava/util/Date;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lnet/hockeyapp/android/objects/FeedbackMessage;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object p1, p0, Lnet/hockeyapp/android/a/a;->a:Landroid/content/Context;

    iput-object p2, p0, Lnet/hockeyapp/android/a/a;->b:Ljava/util/ArrayList;

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd\'T\'HH:mm:ss\'Z\'"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lnet/hockeyapp/android/a/a;->c:Ljava/text/SimpleDateFormat;

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "d MMM h:mm a"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lnet/hockeyapp/android/a/a;->d:Ljava/text/SimpleDateFormat;

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 2

    iget-object v0, p0, Lnet/hockeyapp/android/a/a;->b:Ljava/util/ArrayList;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lnet/hockeyapp/android/a/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_9
    return-void
.end method

.method public final a(Lnet/hockeyapp/android/objects/FeedbackMessage;)V
    .registers 3

    if-eqz p1, :cond_b

    iget-object v0, p0, Lnet/hockeyapp/android/a/a;->b:Ljava/util/ArrayList;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lnet/hockeyapp/android/a/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_b
    return-void
.end method

.method public final getCount()I
    .registers 2

    iget-object v0, p0, Lnet/hockeyapp/android/a/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lnet/hockeyapp/android/a/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getItemId(I)J
    .registers 4

    int-to-long v0, p1

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 8

    iget-object v0, p0, Lnet/hockeyapp/android/a/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/hockeyapp/android/objects/FeedbackMessage;

    if-nez p2, :cond_65

    new-instance p2, Lnet/hockeyapp/android/views/b;

    iget-object v1, p0, Lnet/hockeyapp/android/a/a;->a:Landroid/content/Context;

    invoke-direct {p2, v1}, Lnet/hockeyapp/android/views/b;-><init>(Landroid/content/Context;)V

    :goto_11
    if-eqz v0, :cond_5c

    const/16 v1, 0x3001

    invoke-virtual {p2, v1}, Lnet/hockeyapp/android/views/b;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lnet/hockeyapp/android/a/a;->f:Landroid/widget/TextView;

    const/16 v1, 0x3002

    invoke-virtual {p2, v1}, Lnet/hockeyapp/android/views/b;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lnet/hockeyapp/android/a/a;->g:Landroid/widget/TextView;

    const/16 v1, 0x3003

    invoke-virtual {p2, v1}, Lnet/hockeyapp/android/views/b;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lnet/hockeyapp/android/a/a;->h:Landroid/widget/TextView;

    :try_start_31
    iget-object v1, p0, Lnet/hockeyapp/android/a/a;->c:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0}, Lnet/hockeyapp/android/objects/FeedbackMessage;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    iput-object v1, p0, Lnet/hockeyapp/android/a/a;->e:Ljava/util/Date;

    iget-object v1, p0, Lnet/hockeyapp/android/a/a;->g:Landroid/widget/TextView;

    iget-object v2, p0, Lnet/hockeyapp/android/a/a;->d:Ljava/text/SimpleDateFormat;

    iget-object v3, p0, Lnet/hockeyapp/android/a/a;->e:Ljava/util/Date;

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_4a
    .catch Ljava/text/ParseException; {:try_start_31 .. :try_end_4a} :catch_68

    :goto_4a
    iget-object v1, p0, Lnet/hockeyapp/android/a/a;->f:Landroid/widget/TextView;

    invoke-virtual {v0}, Lnet/hockeyapp/android/objects/FeedbackMessage;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lnet/hockeyapp/android/a/a;->h:Landroid/widget/TextView;

    invoke-virtual {v0}, Lnet/hockeyapp/android/objects/FeedbackMessage;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_5c
    rem-int/lit8 v0, p1, 0x2

    if-nez v0, :cond_6d

    const/4 v0, 0x0

    :goto_61
    invoke-virtual {p2, v0}, Lnet/hockeyapp/android/views/b;->a(I)V

    return-object p2

    :cond_65
    check-cast p2, Lnet/hockeyapp/android/views/b;

    goto :goto_11

    :catch_68
    move-exception v1

    invoke-virtual {v1}, Ljava/text/ParseException;->printStackTrace()V

    goto :goto_4a

    :cond_6d
    const/4 v0, 0x1

    goto :goto_61
.end method
