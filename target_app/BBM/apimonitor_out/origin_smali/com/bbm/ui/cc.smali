.class final Lcom/bbm/ui/cc;
.super Ljava/lang/Object;
.source "EmoticonStickerPager.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/bbm/ui/EmoticonStickerPager;


# direct methods
.method constructor <init>(Lcom/bbm/ui/EmoticonStickerPager;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/ui/cc;->a:Lcom/bbm/ui/EmoticonStickerPager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 5

    iget-object v0, p0, Lcom/bbm/ui/cc;->a:Lcom/bbm/ui/EmoticonStickerPager;

    invoke-static {v0}, Lcom/bbm/ui/EmoticonStickerPager;->g(Lcom/bbm/ui/EmoticonStickerPager;)Z

    iget-object v0, p0, Lcom/bbm/ui/cc;->a:Lcom/bbm/ui/EmoticonStickerPager;

    invoke-static {v0}, Lcom/bbm/ui/EmoticonStickerPager;->h(Lcom/bbm/ui/EmoticonStickerPager;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-static {}, Lcom/bbm/Alaska;->o()Lcom/bbm/Alaska;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "stickers_preview_show_hint"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method
