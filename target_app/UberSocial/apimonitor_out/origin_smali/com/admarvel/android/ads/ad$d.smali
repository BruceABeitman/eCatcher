.class Lcom/admarvel/android/ads/ad$d;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Lcom/admarvel/android/ads/ad$c;

.field public e:Ljava/util/List;

.field final synthetic f:Lcom/admarvel/android/ads/ad;


# direct methods
.method public constructor <init>(Lcom/admarvel/android/ads/ad;Landroid/content/Context;Lcom/admarvel/android/ads/AdMarvelXMLElement;Landroid/widget/LinearLayout$LayoutParams;)V
    .registers 11

    const/4 v5, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    iput-object p1, p0, Lcom/admarvel/android/ads/ad$d;->f:Lcom/admarvel/android/ads/ad;

    invoke-direct {p0, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/admarvel/android/ads/ad$d;->a:Ljava/lang/String;

    iput-object v2, p0, Lcom/admarvel/android/ads/ad$d;->b:Ljava/lang/String;

    iput-object v2, p0, Lcom/admarvel/android/ads/ad$d;->c:Ljava/lang/String;

    sget-object v0, Lcom/admarvel/android/ads/ad$c;->a:Lcom/admarvel/android/ads/ad$c;

    iput-object v0, p0, Lcom/admarvel/android/ads/ad$d;->d:Lcom/admarvel/android/ads/ad$c;

    invoke-virtual {p3}, Lcom/admarvel/android/ads/AdMarvelXMLElement;->c()Ljava/util/LinkedHashMap;

    move-result-object v0

    const-string v3, "action"

    invoke-virtual {v0, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_db

    invoke-virtual {p3}, Lcom/admarvel/android/ads/AdMarvelXMLElement;->c()Ljava/util/LinkedHashMap;

    move-result-object v0

    const-string v3, "action"

    invoke-virtual {v0, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/admarvel/android/ads/AdMarvelXMLElement;

    move-object v3, v0

    :goto_31
    if-eqz v3, :cond_69

    invoke-virtual {v3}, Lcom/admarvel/android/ads/AdMarvelXMLElement;->getAttributes()Ljava/util/LinkedHashMap;

    move-result-object v0

    const-string v4, "type"

    invoke-virtual {v0, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/admarvel/android/ads/ad$d;->c:Ljava/lang/String;

    const-string v4, "open_url"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_fa

    invoke-virtual {v3}, Lcom/admarvel/android/ads/AdMarvelXMLElement;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/admarvel/android/ads/ad$d;->a:Ljava/lang/String;

    invoke-virtual {v3}, Lcom/admarvel/android/ads/AdMarvelXMLElement;->getAttributes()Ljava/util/LinkedHashMap;

    move-result-object v0

    const-string v3, "videoOpenUrlBehavior"

    invoke-virtual {v0, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_69

    const-string v3, "pauseVideo"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_de

    sget-object v0, Lcom/admarvel/android/ads/ad$c;->a:Lcom/admarvel/android/ads/ad$c;

    iput-object v0, p0, Lcom/admarvel/android/ads/ad$d;->d:Lcom/admarvel/android/ads/ad$c;

    :cond_69
    :goto_69
    invoke-virtual {p3}, Lcom/admarvel/android/ads/AdMarvelXMLElement;->c()Ljava/util/LinkedHashMap;

    move-result-object v0

    const-string v3, "clickTracking"

    invoke-virtual {v0, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_117

    invoke-virtual {p3}, Lcom/admarvel/android/ads/AdMarvelXMLElement;->c()Ljava/util/LinkedHashMap;

    move-result-object v0

    const-string v2, "clickTracking"

    invoke-virtual {v0, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/admarvel/android/ads/AdMarvelXMLElement;

    :goto_87
    if-eqz v0, :cond_11a

    invoke-virtual {v0}, Lcom/admarvel/android/ads/AdMarvelXMLElement;->c()Ljava/util/LinkedHashMap;

    move-result-object v0

    const-string v2, "pixels"

    invoke-virtual {v0, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/admarvel/android/ads/AdMarvelXMLElement;

    if-eqz v0, :cond_11a

    invoke-virtual {v0}, Lcom/admarvel/android/ads/AdMarvelXMLElement;->c()Ljava/util/LinkedHashMap;

    move-result-object v2

    const-string v3, "pixel"

    invoke-virtual {v2, v3}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11a

    invoke-virtual {v0}, Lcom/admarvel/android/ads/AdMarvelXMLElement;->c()Ljava/util/LinkedHashMap;

    move-result-object v0

    const-string v2, "pixel"

    invoke-virtual {v0, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/admarvel/android/ads/ad$d;->e:Ljava/util/List;

    iget-object v2, p0, Lcom/admarvel/android/ads/ad$d;->e:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    move v2, v1

    :goto_c2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v2, v1, :cond_11a

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/admarvel/android/ads/AdMarvelXMLElement;

    iget-object v3, p0, Lcom/admarvel/android/ads/ad$d;->e:Ljava/util/List;

    invoke-virtual {v1}, Lcom/admarvel/android/ads/AdMarvelXMLElement;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_c2

    :cond_db
    move-object v3, v2

    goto/16 :goto_31

    :cond_de
    const-string v3, "stopVideo"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_ec

    sget-object v0, Lcom/admarvel/android/ads/ad$c;->b:Lcom/admarvel/android/ads/ad$c;

    iput-object v0, p0, Lcom/admarvel/android/ads/ad$d;->d:Lcom/admarvel/android/ads/ad$c;

    goto/16 :goto_69

    :cond_ec
    const-string v3, "closeVideo"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_69

    sget-object v0, Lcom/admarvel/android/ads/ad$c;->c:Lcom/admarvel/android/ads/ad$c;

    iput-object v0, p0, Lcom/admarvel/android/ads/ad$d;->d:Lcom/admarvel/android/ads/ad$c;

    goto/16 :goto_69

    :cond_fa
    const-string v4, "done"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_107

    invoke-static {p1, v5}, Lcom/admarvel/android/ads/ad;->a(Lcom/admarvel/android/ads/ad;Z)Z

    goto/16 :goto_69

    :cond_107
    const-string v4, "play_movie"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_69

    invoke-virtual {v3}, Lcom/admarvel/android/ads/AdMarvelXMLElement;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/admarvel/android/ads/ad$d;->b:Ljava/lang/String;

    goto/16 :goto_69

    :cond_117
    move-object v0, v2

    goto/16 :goto_87

    :cond_11a
    invoke-virtual {p0, p4}, Lcom/admarvel/android/ads/ad$d;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0, v5}, Lcom/admarvel/android/ads/ad$d;->setClickable(Z)V

    invoke-virtual {p0}, Lcom/admarvel/android/ads/ad$d;->addStatesFromChildren()Z

    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lcom/admarvel/android/ads/ad$d;->setGravity(I)V

    new-instance v0, Lcom/admarvel/android/ads/ad$d$1;

    invoke-direct {v0, p0, p1}, Lcom/admarvel/android/ads/ad$d$1;-><init>(Lcom/admarvel/android/ads/ad$d;Lcom/admarvel/android/ads/ad;)V

    invoke-virtual {p0, v0}, Lcom/admarvel/android/ads/ad$d;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
