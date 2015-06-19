.class public Lcom/twidroid/activity/ThemeSelectorActivity;
.super Lcom/twidroid/activity/UberSocialBaseActivity;
.source "SourceFile"
.field static final b:Ljava/lang/String; = "com.twidroid.activity.DiscoveryActivity"
.field  c:Landroid/support/v4/view/ViewPager;
.field  d:Lcom/viewpagerindicator/TitlePageIndicator;
.field private e:Lcom/twidroid/fragments/a/b;
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Lcom/twidroid/activity/UberSocialBaseActivity;-><init>()V
return-void
.end method
.method private f()V
.registers 5
const/4 v3, 0x0
const v0, 0x7f0901b9
invoke-virtual {p0, v0}, Lcom/twidroid/activity/ThemeSelectorActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/support/v4/view/ViewPager;
iput-object v0, p0, Lcom/twidroid/activity/ThemeSelectorActivity;->c:Landroid/support/v4/view/ViewPager;
new-instance v0, Lcom/twidroid/fragments/a/b;
invoke-virtual {p0}, Lcom/twidroid/activity/ThemeSelectorActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;
move-result-object v1
invoke-direct {v0, v1}, Lcom/twidroid/fragments/a/b;-><init>(Landroid/support/v4/app/FragmentManager;)V
iput-object v0, p0, Lcom/twidroid/activity/ThemeSelectorActivity;->e:Lcom/twidroid/fragments/a/b;
iget-object v0, p0, Lcom/twidroid/activity/ThemeSelectorActivity;->e:Lcom/twidroid/fragments/a/b;
new-instance v1, Lcom/twidroid/fragments/whatshotfragments/k;
iget-object v2, p0, Lcom/twidroid/activity/ThemeSelectorActivity;->J:Lcom/twidroid/UberSocialApplication;
invoke-direct {v1, v2}, Lcom/twidroid/fragments/whatshotfragments/k;-><init>(Lcom/twidroid/UberSocialApplication;)V
invoke-virtual {v0, v1}, Lcom/twidroid/fragments/a/b;->a(Lcom/twidroid/fragments/base/o;)V
iget-object v0, p0, Lcom/twidroid/activity/ThemeSelectorActivity;->c:Landroid/support/v4/view/ViewPager;
iget-object v1, p0, Lcom/twidroid/activity/ThemeSelectorActivity;->e:Lcom/twidroid/fragments/a/b;
invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V
iget-object v0, p0, Lcom/twidroid/activity/ThemeSelectorActivity;->d:Lcom/viewpagerindicator/TitlePageIndicator;
iget-object v1, p0, Lcom/twidroid/activity/ThemeSelectorActivity;->c:Landroid/support/v4/view/ViewPager;
invoke-virtual {v0, v1}, Lcom/viewpagerindicator/TitlePageIndicator;->setViewPager(Landroid/support/v4/view/ViewPager;)V
iget-object v0, p0, Lcom/twidroid/activity/ThemeSelectorActivity;->d:Lcom/viewpagerindicator/TitlePageIndicator;
invoke-virtual {v0, v3}, Lcom/viewpagerindicator/TitlePageIndicator;->setFooterColor(I)V
iget-object v0, p0, Lcom/twidroid/activity/ThemeSelectorActivity;->d:Lcom/viewpagerindicator/TitlePageIndicator;
sget-object v1, Lcom/viewpagerindicator/d;->a:Lcom/viewpagerindicator/d;
invoke-virtual {v0, v1}, Lcom/viewpagerindicator/TitlePageIndicator;->setFooterIndicatorStyle(Lcom/viewpagerindicator/d;)V
iget-object v0, p0, Lcom/twidroid/activity/ThemeSelectorActivity;->c:Landroid/support/v4/view/ViewPager;
const/4 v1, 0x1
invoke-virtual {v0, v1, v3}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V
return-void
.end method
.method private g()V
.registers 4
iget-object v0, p0, Lcom/twidroid/activity/ThemeSelectorActivity;->J:Lcom/twidroid/UberSocialApplication;
if-nez v0, :cond_5
:goto_4
return-void
:cond_5
invoke-virtual {p0}, Lcom/twidroid/activity/ThemeSelectorActivity;->getResources()Landroid/content/res/Resources;
move-result-object v0
iget-object v1, p0, Lcom/twidroid/activity/ThemeSelectorActivity;->d:Lcom/viewpagerindicator/TitlePageIndicator;
const v2, 0x7f0a004e
invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I
move-result v0
int-to-float v0, v0
invoke-virtual {v1, v0}, Lcom/viewpagerindicator/TitlePageIndicator;->setTextSize(F)V
goto :goto_4
.end method
.method protected d(Z)V
.registers 2
invoke-direct {p0}, Lcom/twidroid/activity/ThemeSelectorActivity;->f()V
return-void
.end method
.method public e()V
.registers 4
iget-object v0, p0, Lcom/twidroid/activity/ThemeSelectorActivity;->c:Landroid/support/v4/view/ViewPager;
iget-object v1, p0, Lcom/twidroid/activity/ThemeSelectorActivity;->e:Lcom/twidroid/fragments/a/b;
const-class v2, Lcom/twidroid/fragments/whatshotfragments/a;
invoke-virtual {v2}, Ljava/lang/Class;->toString()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Lcom/twidroid/fragments/a/b;->a(Ljava/lang/String;)I
move-result v1
const/4 v2, 0x0
invoke-virtual {v0, v1, v2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V
return-void
.end method
.method protected e(Z)V
.registers 4
if-eqz p1, :cond_f
iget-object v0, p0, Lcom/twidroid/activity/ThemeSelectorActivity;->Q:Landroid/widget/ProgressBar;
const/4 v1, 0x1
invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V
iget-object v0, p0, Lcom/twidroid/activity/ThemeSelectorActivity;->Q:Landroid/widget/ProgressBar;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V
:goto_e
return-void
:cond_f
iget-object v0, p0, Lcom/twidroid/activity/ThemeSelectorActivity;->Q:Landroid/widget/ProgressBar;
const/16 v1, 0x8
invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V
goto :goto_e
.end method
.method public onCreate(Landroid/os/Bundle;)V
.registers 6
const-string v1, " + Lcom/twidroid/activity/ThemeSelectorActivity; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0, p1}, Lcom/twidroid/activity/UberSocialBaseActivity;->onCreate(Landroid/os/Bundle;)V
const v0, 0x7f03006b
invoke-virtual {p0, v0}, Lcom/twidroid/activity/ThemeSelectorActivity;->setContentView(I)V
invoke-virtual {p0}, Lcom/twidroid/activity/ThemeSelectorActivity;->getApplication()Landroid/app/Application;
move-result-object v0
check-cast v0, Lcom/twidroid/UberSocialApplication;
const v1, 0x7f0c02f4
invoke-virtual {p0}, Lcom/twidroid/activity/ThemeSelectorActivity;->a()Landroid/support/v7/app/ActionBar;
move-result-object v2
const/4 v3, 0x1
invoke-static {v0, p0, v1, v2, v3}, Lcom/twidroid/d/t;->a(Lcom/twidroid/UberSocialApplication;Landroid/app/Activity;ILandroid/support/v7/app/ActionBar;Z)V
const v0, 0x7f0900f7
invoke-virtual {p0, v0}, Lcom/twidroid/activity/ThemeSelectorActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/ProgressBar;
iput-object v0, p0, Lcom/twidroid/activity/ThemeSelectorActivity;->Q:Landroid/widget/ProgressBar;
const v0, 0x7f09007b
invoke-virtual {p0, v0}, Lcom/twidroid/activity/ThemeSelectorActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
iput-object v0, p0, Lcom/twidroid/activity/ThemeSelectorActivity;->R:Landroid/widget/TextView;
const v0, 0x7f0901b8
invoke-virtual {p0, v0}, Lcom/twidroid/activity/ThemeSelectorActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Lcom/viewpagerindicator/TitlePageIndicator;
iput-object v0, p0, Lcom/twidroid/activity/ThemeSelectorActivity;->d:Lcom/viewpagerindicator/TitlePageIndicator;
invoke-direct {p0}, Lcom/twidroid/activity/ThemeSelectorActivity;->f()V
invoke-direct {p0}, Lcom/twidroid/activity/ThemeSelectorActivity;->g()V
const-string v1, " - Lcom/twidroid/activity/ThemeSelectorActivity; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method