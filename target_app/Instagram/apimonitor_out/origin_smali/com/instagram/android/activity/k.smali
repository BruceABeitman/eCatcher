.class final Lcom/instagram/android/activity/k;
.super Landroid/webkit/WebViewClient;
.source "FoursquareAuthActivity.java"


# instance fields
.field final synthetic a:Lcom/instagram/android/activity/FoursquareAuthActivity;


# direct methods
.method constructor <init>(Lcom/instagram/android/activity/FoursquareAuthActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/instagram/android/activity/k;->a:Lcom/instagram/android/activity/FoursquareAuthActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 6

    iget-object v0, p0, Lcom/instagram/android/activity/k;->a:Lcom/instagram/android/activity/FoursquareAuthActivity;

    invoke-static {p2}, Lcom/instagram/android/activity/FoursquareAuthActivity;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/instagram/android/activity/k;->a:Lcom/instagram/android/activity/FoursquareAuthActivity;

    iget-object v1, p0, Lcom/instagram/android/activity/k;->a:Lcom/instagram/android/activity/FoursquareAuthActivity;

    invoke-static {v1, p2}, Lcom/instagram/android/activity/FoursquareAuthActivity;->a(Lcom/instagram/android/activity/FoursquareAuthActivity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/instagram/android/activity/FoursquareAuthActivity;->b(Lcom/instagram/android/activity/FoursquareAuthActivity;Ljava/lang/String;)V

    :cond_13
    return-void
.end method
