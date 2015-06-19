.class public final Lcom/spotify/mobile/android/spotlets/artist/adapters/j;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Ljava/lang/String;

.field private final c:Lcom/spotify/mobile/android/spotlets/artist/view/b/d;

.field private final d:Lcom/spotify/mobile/android/spotlets/artist/view/e;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/spotify/mobile/android/spotlets/artist/view/b/d;Lcom/spotify/mobile/android/spotlets/artist/view/e;)V
    .registers 8

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const/4 v0, 0x0

    const/16 v1, 0x12c

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/adapters/j;->b:Ljava/lang/String;

    iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/artist/adapters/j;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/spotify/mobile/android/spotlets/artist/adapters/j;->c:Lcom/spotify/mobile/android/spotlets/artist/view/b/d;

    iput-object p4, p0, Lcom/spotify/mobile/android/spotlets/artist/adapters/j;->d:Lcom/spotify/mobile/android/spotlets/artist/view/e;

    return-void
.end method


# virtual methods
.method public final getCount()I
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/adapters/j;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x1

    goto :goto_9
.end method

.method public final getItem(I)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/adapters/j;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final getItemId(I)J
    .registers 4

    int-to-long v0, p1

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 6

    if-nez p2, :cond_26

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/adapters/j;->d:Lcom/spotify/mobile/android/spotlets/artist/view/e;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/artist/view/e;->b()Lcom/spotify/android/paste/widget/ListItemView;

    move-result-object p2

    :goto_8
    invoke-virtual {p2}, Lcom/spotify/android/paste/widget/ListItemView;->d()V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/adapters/j;->b:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lcom/spotify/android/paste/widget/ListItemView;->a(Ljava/lang/CharSequence;)V

    invoke-virtual {p2}, Lcom/spotify/android/paste/widget/ListItemView;->b()Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    invoke-virtual {p2}, Lcom/spotify/android/paste/widget/ListItemView;->b()Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/adapters/j;->c:Lcom/spotify/mobile/android/spotlets/artist/view/b/d;

    invoke-virtual {p2, v0}, Lcom/spotify/android/paste/widget/ListItemView;->setTag(Ljava/lang/Object;)V

    return-object p2

    :cond_26
    check-cast p2, Lcom/spotify/android/paste/widget/ListItemView;

    goto :goto_8
.end method
