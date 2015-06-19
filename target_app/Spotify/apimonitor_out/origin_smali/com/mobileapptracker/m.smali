.class final Lcom/mobileapptracker/m;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/mobileapptracker/h;


# direct methods
.method public static declared-synchronized a()Ljava/lang/String;
    .registers 5

    const-class v1, Lcom/mobileapptracker/m;

    monitor-enter v1

    :try_start_3
    invoke-static {}, Lcom/mobileapptracker/h;->a()Lcom/mobileapptracker/h;

    move-result-object v0

    sput-object v0, Lcom/mobileapptracker/m;->a:Lcom/mobileapptracker/h;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "connection_type="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/mobileapptracker/m;->a:Lcom/mobileapptracker/h;

    invoke-virtual {v3}, Lcom/mobileapptracker/h;->l()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "age"

    sget-object v3, Lcom/mobileapptracker/m;->a:Lcom/mobileapptracker/h;

    invoke-virtual {v3}, Lcom/mobileapptracker/h;->e()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/mobileapptracker/m;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "altitude"

    sget-object v3, Lcom/mobileapptracker/m;->a:Lcom/mobileapptracker/h;

    invoke-virtual {v3}, Lcom/mobileapptracker/h;->g()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/mobileapptracker/m;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "android_id"

    sget-object v3, Lcom/mobileapptracker/m;->a:Lcom/mobileapptracker/h;

    invoke-virtual {v3}, Lcom/mobileapptracker/h;->h()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/mobileapptracker/m;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "app_ad_tracking"

    sget-object v3, Lcom/mobileapptracker/m;->a:Lcom/mobileapptracker/h;

    invoke-virtual {v3}, Lcom/mobileapptracker/h;->i()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/mobileapptracker/m;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "app_name"

    sget-object v3, Lcom/mobileapptracker/m;->a:Lcom/mobileapptracker/h;

    invoke-virtual {v3}, Lcom/mobileapptracker/h;->j()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/mobileapptracker/m;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "app_version"

    sget-object v3, Lcom/mobileapptracker/m;->a:Lcom/mobileapptracker/h;

    invoke-virtual {v3}, Lcom/mobileapptracker/h;->k()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/mobileapptracker/m;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "country_code"

    sget-object v3, Lcom/mobileapptracker/m;->a:Lcom/mobileapptracker/h;

    invoke-virtual {v3}, Lcom/mobileapptracker/h;->m()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/mobileapptracker/m;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "currency_code"

    sget-object v3, Lcom/mobileapptracker/m;->a:Lcom/mobileapptracker/h;

    invoke-virtual {v3}, Lcom/mobileapptracker/h;->n()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/mobileapptracker/m;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "device_brand"

    sget-object v3, Lcom/mobileapptracker/m;->a:Lcom/mobileapptracker/h;

    invoke-virtual {v3}, Lcom/mobileapptracker/h;->o()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/mobileapptracker/m;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "device_carrier"

    sget-object v3, Lcom/mobileapptracker/m;->a:Lcom/mobileapptracker/h;

    invoke-virtual {v3}, Lcom/mobileapptracker/h;->p()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/mobileapptracker/m;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "device_cpu_type"

    sget-object v3, Lcom/mobileapptracker/m;->a:Lcom/mobileapptracker/h;

    invoke-virtual {v3}, Lcom/mobileapptracker/h;->q()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/mobileapptracker/m;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "device_cpu_subtype"

    sget-object v3, Lcom/mobileapptracker/m;->a:Lcom/mobileapptracker/h;

    invoke-virtual {v3}, Lcom/mobileapptracker/h;->r()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/mobileapptracker/m;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "device_model"

    sget-object v3, Lcom/mobileapptracker/m;->a:Lcom/mobileapptracker/h;

    invoke-virtual {v3}, Lcom/mobileapptracker/h;->t()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/mobileapptracker/m;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "device_id"

    sget-object v3, Lcom/mobileapptracker/m;->a:Lcom/mobileapptracker/h;

    invoke-virtual {v3}, Lcom/mobileapptracker/h;->s()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/mobileapptracker/m;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "attribute_sub1"

    sget-object v3, Lcom/mobileapptracker/m;->a:Lcom/mobileapptracker/h;

    invoke-virtual {v3}, Lcom/mobileapptracker/h;->u()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/mobileapptracker/m;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "attribute_sub2"

    sget-object v3, Lcom/mobileapptracker/m;->a:Lcom/mobileapptracker/h;

    invoke-virtual {v3}, Lcom/mobileapptracker/h;->v()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/mobileapptracker/m;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "attribute_sub3"

    sget-object v3, Lcom/mobileapptracker/m;->a:Lcom/mobileapptracker/h;

    invoke-virtual {v3}, Lcom/mobileapptracker/h;->w()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/mobileapptracker/m;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "attribute_sub4"

    sget-object v3, Lcom/mobileapptracker/m;->a:Lcom/mobileapptracker/h;

    invoke-virtual {v3}, Lcom/mobileapptracker/h;->x()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/mobileapptracker/m;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "attribute_sub5"

    sget-object v3, Lcom/mobileapptracker/m;->a:Lcom/mobileapptracker/h;

    invoke-virtual {v3}, Lcom/mobileapptracker/h;->y()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/mobileapptracker/m;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "content_id"

    sget-object v3, Lcom/mobileapptracker/m;->a:Lcom/mobileapptracker/h;

    invoke-virtual {v3}, Lcom/mobileapptracker/h;->z()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/mobileapptracker/m;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "content_type"

    sget-object v3, Lcom/mobileapptracker/m;->a:Lcom/mobileapptracker/h;

    invoke-virtual {v3}, Lcom/mobileapptracker/h;->A()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/mobileapptracker/m;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "date1"

    sget-object v3, Lcom/mobileapptracker/m;->a:Lcom/mobileapptracker/h;

    invoke-virtual {v3}, Lcom/mobileapptracker/h;->B()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/mobileapptracker/m;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "date2"

    sget-object v3, Lcom/mobileapptracker/m;->a:Lcom/mobileapptracker/h;

    invoke-virtual {v3}, Lcom/mobileapptracker/h;->C()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/mobileapptracker/m;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "level"

    sget-object v3, Lcom/mobileapptracker/m;->a:Lcom/mobileapptracker/h;

    invoke-virtual {v3}, Lcom/mobileapptracker/h;->E()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/mobileapptracker/m;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "quantity"

    sget-object v3, Lcom/mobileapptracker/m;->a:Lcom/mobileapptracker/h;

    invoke-virtual {v3}, Lcom/mobileapptracker/h;->G()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/mobileapptracker/m;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "rating"

    sget-object v3, Lcom/mobileapptracker/m;->a:Lcom/mobileapptracker/h;

    invoke-virtual {v3}, Lcom/mobileapptracker/h;->H()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/mobileapptracker/m;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "search_string"

    sget-object v3, Lcom/mobileapptracker/m;->a:Lcom/mobileapptracker/h;

    invoke-virtual {v3}, Lcom/mobileapptracker/h;->I()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/mobileapptracker/m;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "existing_user"

    sget-object v3, Lcom/mobileapptracker/m;->a:Lcom/mobileapptracker/h;

    invoke-virtual {v3}, Lcom/mobileapptracker/h;->J()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/mobileapptracker/m;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "facebook_user_id"

    sget-object v3, Lcom/mobileapptracker/m;->a:Lcom/mobileapptracker/h;

    invoke-virtual {v3}, Lcom/mobileapptracker/h;->K()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/mobileapptracker/m;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "gender"

    sget-object v3, Lcom/mobileapptracker/m;->a:Lcom/mobileapptracker/h;

    invoke-virtual {v3}, Lcom/mobileapptracker/h;->L()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/mobileapptracker/m;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "google_aid"

    sget-object v3, Lcom/mobileapptracker/m;->a:Lcom/mobileapptracker/h;

    invoke-virtual {v3}, Lcom/mobileapptracker/h;->M()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/mobileapptracker/m;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "google_ad_tracking_disabled"

    sget-object v3, Lcom/mobileapptracker/m;->a:Lcom/mobileapptracker/h;

    invoke-virtual {v3}, Lcom/mobileapptracker/h;->N()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/mobileapptracker/m;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "google_user_id"

    sget-object v3, Lcom/mobileapptracker/m;->a:Lcom/mobileapptracker/h;

    invoke-virtual {v3}, Lcom/mobileapptracker/h;->O()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/mobileapptracker/m;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "insdate"

    sget-object v3, Lcom/mobileapptracker/m;->a:Lcom/mobileapptracker/h;

    invoke-virtual {v3}, Lcom/mobileapptracker/h;->P()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/mobileapptracker/m;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "installer"

    sget-object v3, Lcom/mobileapptracker/m;->a:Lcom/mobileapptracker/h;

    invoke-virtual {v3}, Lcom/mobileapptracker/h;->Q()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/mobileapptracker/m;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "install_log_id"

    sget-object v3, Lcom/mobileapptracker/m;->a:Lcom/mobileapptracker/h;

    invoke-virtual {v3}, Lcom/mobileapptracker/h;->R()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/mobileapptracker/m;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "install_referrer"

    sget-object v3, Lcom/mobileapptracker/m;->a:Lcom/mobileapptracker/h;

    invoke-virtual {v3}, Lcom/mobileapptracker/h;->S()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/mobileapptracker/m;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "is_paying_user"

    sget-object v3, Lcom/mobileapptracker/m;->a:Lcom/mobileapptracker/h;

    invoke-virtual {v3}, Lcom/mobileapptracker/h;->T()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/mobileapptracker/m;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "language"

    sget-object v3, Lcom/mobileapptracker/m;->a:Lcom/mobileapptracker/h;

    invoke-virtual {v3}, Lcom/mobileapptracker/h;->U()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/mobileapptracker/m;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "last_open_log_id"

    sget-object v3, Lcom/mobileapptracker/m;->a:Lcom/mobileapptracker/h;

    invoke-virtual {v3}, Lcom/mobileapptracker/h;->V()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/mobileapptracker/m;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "latitude"

    sget-object v3, Lcom/mobileapptracker/m;->a:Lcom/mobileapptracker/h;

    invoke-virtual {v3}, Lcom/mobileapptracker/h;->W()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/mobileapptracker/m;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "longitude"

    sget-object v3, Lcom/mobileapptracker/m;->a:Lcom/mobileapptracker/h;

    invoke-virtual {v3}, Lcom/mobileapptracker/h;->X()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/mobileapptracker/m;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "mac_address"

    sget-object v3, Lcom/mobileapptracker/m;->a:Lcom/mobileapptracker/h;

    invoke-virtual {v3}, Lcom/mobileapptracker/h;->Y()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/mobileapptracker/m;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "mat_id"

    sget-object v3, Lcom/mobileapptracker/m;->a:Lcom/mobileapptracker/h;

    invoke-virtual {v3}, Lcom/mobileapptracker/h;->Z()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/mobileapptracker/m;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "mobile_country_code"

    sget-object v3, Lcom/mobileapptracker/m;->a:Lcom/mobileapptracker/h;

    invoke-virtual {v3}, Lcom/mobileapptracker/h;->aa()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/mobileapptracker/m;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "mobile_network_code"

    sget-object v3, Lcom/mobileapptracker/m;->a:Lcom/mobileapptracker/h;

    invoke-virtual {v3}, Lcom/mobileapptracker/h;->ab()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/mobileapptracker/m;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "open_log_id"

    sget-object v3, Lcom/mobileapptracker/m;->a:Lcom/mobileapptracker/h;

    invoke-virtual {v3}, Lcom/mobileapptracker/h;->ac()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/mobileapptracker/m;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "os_version"

    sget-object v3, Lcom/mobileapptracker/m;->a:Lcom/mobileapptracker/h;

    invoke-virtual {v3}, Lcom/mobileapptracker/h;->ad()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/mobileapptracker/m;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "sdk_plugin"

    sget-object v3, Lcom/mobileapptracker/m;->a:Lcom/mobileapptracker/h;

    invoke-virtual {v3}, Lcom/mobileapptracker/h;->af()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/mobileapptracker/m;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "android_purchase_status"

    sget-object v3, Lcom/mobileapptracker/m;->a:Lcom/mobileapptracker/h;

    invoke-virtual {v3}, Lcom/mobileapptracker/h;->ag()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/mobileapptracker/m;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "advertiser_ref_id"

    sget-object v3, Lcom/mobileapptracker/m;->a:Lcom/mobileapptracker/h;

    invoke-virtual {v3}, Lcom/mobileapptracker/h;->aj()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/mobileapptracker/m;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "revenue"

    sget-object v3, Lcom/mobileapptracker/m;->a:Lcom/mobileapptracker/h;

    invoke-virtual {v3}, Lcom/mobileapptracker/h;->ak()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/mobileapptracker/m;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "screen_density"

    sget-object v3, Lcom/mobileapptracker/m;->a:Lcom/mobileapptracker/h;

    invoke-virtual {v3}, Lcom/mobileapptracker/h;->al()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/mobileapptracker/m;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "screen_layout_size"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/mobileapptracker/m;->a:Lcom/mobileapptracker/h;

    invoke-virtual {v4}, Lcom/mobileapptracker/h;->an()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/mobileapptracker/m;->a:Lcom/mobileapptracker/h;

    invoke-virtual {v4}, Lcom/mobileapptracker/h;->am()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/mobileapptracker/m;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "sdk_version"

    sget-object v3, Lcom/mobileapptracker/m;->a:Lcom/mobileapptracker/h;

    invoke-virtual {v3}, Lcom/mobileapptracker/h;->ao()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/mobileapptracker/m;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "truste_tpid"

    sget-object v3, Lcom/mobileapptracker/m;->a:Lcom/mobileapptracker/h;

    invoke-virtual {v3}, Lcom/mobileapptracker/h;->ar()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/mobileapptracker/m;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "twitter_user_id"

    sget-object v3, Lcom/mobileapptracker/m;->a:Lcom/mobileapptracker/h;

    invoke-virtual {v3}, Lcom/mobileapptracker/h;->as()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/mobileapptracker/m;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "update_log_id"

    sget-object v3, Lcom/mobileapptracker/m;->a:Lcom/mobileapptracker/h;

    invoke-virtual {v3}, Lcom/mobileapptracker/h;->at()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/mobileapptracker/m;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "conversion_user_agent"

    sget-object v3, Lcom/mobileapptracker/m;->a:Lcom/mobileapptracker/h;

    invoke-virtual {v3}, Lcom/mobileapptracker/h;->au()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/mobileapptracker/m;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "user_email"

    sget-object v3, Lcom/mobileapptracker/m;->a:Lcom/mobileapptracker/h;

    invoke-virtual {v3}, Lcom/mobileapptracker/h;->av()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/mobileapptracker/m;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "user_id"

    sget-object v3, Lcom/mobileapptracker/m;->a:Lcom/mobileapptracker/h;

    invoke-virtual {v3}, Lcom/mobileapptracker/h;->aw()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/mobileapptracker/m;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "user_name"

    sget-object v3, Lcom/mobileapptracker/m;->a:Lcom/mobileapptracker/h;

    invoke-virtual {v3}, Lcom/mobileapptracker/h;->ax()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/mobileapptracker/m;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_2f0
    .catchall {:try_start_3 .. :try_end_2f0} :catchall_2f3

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_2f3
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized a(Ljava/lang/String;Lcom/mobileapptracker/a;)Ljava/lang/String;
    .registers 9

    const-class v2, Lcom/mobileapptracker/m;

    monitor-enter v2

    :try_start_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/mobileapptracker/h;->a()Lcom/mobileapptracker/h;

    move-result-object v1

    sput-object v1, Lcom/mobileapptracker/m;->a:Lcom/mobileapptracker/h;

    if-eqz v1, :cond_5a

    sget-object v1, Lcom/mobileapptracker/m;->a:Lcom/mobileapptracker/h;

    invoke-virtual {v1}, Lcom/mobileapptracker/h;->M()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_30

    const-string v3, "&google_aid="

    invoke-virtual {p0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_30

    const-string v3, "google_aid"

    invoke-static {v0, v3, v1}, Lcom/mobileapptracker/m;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "google_ad_tracking_disabled"

    sget-object v3, Lcom/mobileapptracker/m;->a:Lcom/mobileapptracker/h;

    invoke-virtual {v3}, Lcom/mobileapptracker/h;->N()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v3}, Lcom/mobileapptracker/m;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    :cond_30
    sget-object v1, Lcom/mobileapptracker/m;->a:Lcom/mobileapptracker/h;

    invoke-virtual {v1}, Lcom/mobileapptracker/h;->S()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_45

    const-string v3, "&install_referrer="

    invoke-virtual {p0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_45

    const-string v3, "install_referrer"

    invoke-static {v0, v3, v1}, Lcom/mobileapptracker/m;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    :cond_45
    sget-object v1, Lcom/mobileapptracker/m;->a:Lcom/mobileapptracker/h;

    invoke-virtual {v1}, Lcom/mobileapptracker/h;->au()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5a

    const-string v3, "&conversion_user_agent="

    invoke-virtual {p0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5a

    const-string v3, "conversion_user_agent"

    invoke-static {v0, v3, v1}, Lcom/mobileapptracker/m;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    :cond_5a
    const-string v1, "&system_date="

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_77

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    const-string v1, "system_date"

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v3}, Lcom/mobileapptracker/m;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    :cond_77
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_7a
    .catchall {:try_start_3 .. :try_end_7a} :catchall_8a

    move-result-object v0

    :try_start_7b
    invoke-virtual {p1, v0}, Lcom/mobileapptracker/a;->a(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {v1}, Lcom/mobileapptracker/a;->a([B)Ljava/lang/String;
    :try_end_82
    .catchall {:try_start_7b .. :try_end_82} :catchall_8a
    .catch Ljava/lang/Exception; {:try_start_7b .. :try_end_82} :catch_85

    move-result-object v0

    :goto_83
    monitor-exit v2

    return-object v0

    :catch_85
    move-exception v1

    :try_start_86
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_89
    .catchall {:try_start_86 .. :try_end_89} :catchall_8a

    goto :goto_83

    :catchall_8a
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method public static a(ZZ)Ljava/lang/String;
    .registers 5

    invoke-static {}, Lcom/mobileapptracker/h;->a()Lcom/mobileapptracker/h;

    move-result-object v0

    sput-object v0, Lcom/mobileapptracker/m;->a:Lcom/mobileapptracker/h;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "https://"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/mobileapptracker/m;->a:Lcom/mobileapptracker/h;

    invoke-virtual {v1}, Lcom/mobileapptracker/h;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    if-eqz p0, :cond_1b1

    const-string v1, "debug.engine.mobileapptracking.com"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_24
    const-string v1, "/serve?ver="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/mobileapptracker/m;->a:Lcom/mobileapptracker/h;

    invoke-virtual {v2}, Lcom/mobileapptracker/h;->ao()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&transaction_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "sdk"

    const-string v2, "android"

    invoke-static {v0, v1, v2}, Lcom/mobileapptracker/m;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "action"

    sget-object v2, Lcom/mobileapptracker/m;->a:Lcom/mobileapptracker/h;

    invoke-virtual {v2}, Lcom/mobileapptracker/h;->c()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/mobileapptracker/m;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "advertiser_id"

    sget-object v2, Lcom/mobileapptracker/m;->a:Lcom/mobileapptracker/h;

    invoke-virtual {v2}, Lcom/mobileapptracker/h;->d()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/mobileapptracker/m;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "site_event_id"

    sget-object v2, Lcom/mobileapptracker/m;->a:Lcom/mobileapptracker/h;

    invoke-virtual {v2}, Lcom/mobileapptracker/h;->D()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/mobileapptracker/m;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "site_event_name"

    sget-object v2, Lcom/mobileapptracker/m;->a:Lcom/mobileapptracker/h;

    invoke-virtual {v2}, Lcom/mobileapptracker/h;->F()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/mobileapptracker/m;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "package_name"

    sget-object v2, Lcom/mobileapptracker/m;->a:Lcom/mobileapptracker/h;

    invoke-virtual {v2}, Lcom/mobileapptracker/h;->ae()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/mobileapptracker/m;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "referral_source"

    sget-object v2, Lcom/mobileapptracker/m;->a:Lcom/mobileapptracker/h;

    invoke-virtual {v2}, Lcom/mobileapptracker/h;->ah()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/mobileapptracker/m;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "referral_url"

    sget-object v2, Lcom/mobileapptracker/m;->a:Lcom/mobileapptracker/h;

    invoke-virtual {v2}, Lcom/mobileapptracker/h;->ai()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/mobileapptracker/m;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "site_id"

    sget-object v2, Lcom/mobileapptracker/m;->a:Lcom/mobileapptracker/h;

    invoke-virtual {v2}, Lcom/mobileapptracker/h;->ap()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/mobileapptracker/m;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "tracking_id"

    sget-object v2, Lcom/mobileapptracker/m;->a:Lcom/mobileapptracker/h;

    invoke-virtual {v2}, Lcom/mobileapptracker/h;->aq()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/mobileapptracker/m;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_b5

    const-string v1, "&attr_set=1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_b5
    const-string v1, "publisher_id"

    sget-object v2, Lcom/mobileapptracker/m;->a:Lcom/mobileapptracker/h;

    invoke-virtual {v2}, Lcom/mobileapptracker/h;->az()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/mobileapptracker/m;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "offer_id"

    sget-object v2, Lcom/mobileapptracker/m;->a:Lcom/mobileapptracker/h;

    invoke-virtual {v2}, Lcom/mobileapptracker/h;->ay()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/mobileapptracker/m;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "publisher_ref_id"

    sget-object v2, Lcom/mobileapptracker/m;->a:Lcom/mobileapptracker/h;

    invoke-virtual {v2}, Lcom/mobileapptracker/h;->aA()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/mobileapptracker/m;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "publisher_sub_publisher"

    sget-object v2, Lcom/mobileapptracker/m;->a:Lcom/mobileapptracker/h;

    invoke-virtual {v2}, Lcom/mobileapptracker/h;->aH()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/mobileapptracker/m;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "publisher_sub_site"

    sget-object v2, Lcom/mobileapptracker/m;->a:Lcom/mobileapptracker/h;

    invoke-virtual {v2}, Lcom/mobileapptracker/h;->aI()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/mobileapptracker/m;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "publisher_sub_campaign"

    sget-object v2, Lcom/mobileapptracker/m;->a:Lcom/mobileapptracker/h;

    invoke-virtual {v2}, Lcom/mobileapptracker/h;->aJ()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/mobileapptracker/m;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "publisher_sub_adgroup"

    sget-object v2, Lcom/mobileapptracker/m;->a:Lcom/mobileapptracker/h;

    invoke-virtual {v2}, Lcom/mobileapptracker/h;->aK()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/mobileapptracker/m;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "publisher_sub_ad"

    sget-object v2, Lcom/mobileapptracker/m;->a:Lcom/mobileapptracker/h;

    invoke-virtual {v2}, Lcom/mobileapptracker/h;->aL()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/mobileapptracker/m;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "publisher_sub_keyword"

    sget-object v2, Lcom/mobileapptracker/m;->a:Lcom/mobileapptracker/h;

    invoke-virtual {v2}, Lcom/mobileapptracker/h;->aM()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/mobileapptracker/m;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "advertiser_sub_publisher"

    sget-object v2, Lcom/mobileapptracker/m;->a:Lcom/mobileapptracker/h;

    invoke-virtual {v2}, Lcom/mobileapptracker/h;->aB()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/mobileapptracker/m;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "advertiser_sub_site"

    sget-object v2, Lcom/mobileapptracker/m;->a:Lcom/mobileapptracker/h;

    invoke-virtual {v2}, Lcom/mobileapptracker/h;->aC()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/mobileapptracker/m;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "advertiser_sub_campaign"

    sget-object v2, Lcom/mobileapptracker/m;->a:Lcom/mobileapptracker/h;

    invoke-virtual {v2}, Lcom/mobileapptracker/h;->aD()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/mobileapptracker/m;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "advertiser_sub_adgroup"

    sget-object v2, Lcom/mobileapptracker/m;->a:Lcom/mobileapptracker/h;

    invoke-virtual {v2}, Lcom/mobileapptracker/h;->aE()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/mobileapptracker/m;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "advertiser_sub_ad"

    sget-object v2, Lcom/mobileapptracker/m;->a:Lcom/mobileapptracker/h;

    invoke-virtual {v2}, Lcom/mobileapptracker/h;->aF()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/mobileapptracker/m;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "advertiser_sub_keyword"

    sget-object v2, Lcom/mobileapptracker/m;->a:Lcom/mobileapptracker/h;

    invoke-virtual {v2}, Lcom/mobileapptracker/h;->aG()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/mobileapptracker/m;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "publisher_sub1"

    sget-object v2, Lcom/mobileapptracker/m;->a:Lcom/mobileapptracker/h;

    invoke-virtual {v2}, Lcom/mobileapptracker/h;->aN()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/mobileapptracker/m;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "publisher_sub2"

    sget-object v2, Lcom/mobileapptracker/m;->a:Lcom/mobileapptracker/h;

    invoke-virtual {v2}, Lcom/mobileapptracker/h;->aO()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/mobileapptracker/m;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "publisher_sub3"

    sget-object v2, Lcom/mobileapptracker/m;->a:Lcom/mobileapptracker/h;

    invoke-virtual {v2}, Lcom/mobileapptracker/h;->aP()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/mobileapptracker/m;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "publisher_sub4"

    sget-object v2, Lcom/mobileapptracker/m;->a:Lcom/mobileapptracker/h;

    invoke-virtual {v2}, Lcom/mobileapptracker/h;->aQ()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/mobileapptracker/m;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "publisher_sub5"

    sget-object v2, Lcom/mobileapptracker/m;->a:Lcom/mobileapptracker/h;

    invoke-virtual {v2}, Lcom/mobileapptracker/h;->aR()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/mobileapptracker/m;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/mobileapptracker/m;->a:Lcom/mobileapptracker/h;

    invoke-virtual {v1}, Lcom/mobileapptracker/h;->f()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1a5

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1a5

    const-string v1, "&skip_dup=1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1a5
    if-eqz p0, :cond_1ac

    const-string v1, "&debug=1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1ac
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1b1
    const-string v1, "engine.mobileapptracking.com"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_24
.end method

.method private static declared-synchronized a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    const-class v1, Lcom/mobileapptracker/m;

    monitor-enter v1

    if-eqz p2, :cond_2f

    :try_start_5
    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_a
    .catchall {:try_start_5 .. :try_end_a} :catchall_54

    move-result v0

    if-nez v0, :cond_2f

    :try_start_d
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "&"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "UTF-8"

    invoke-static {p2, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2f
    .catchall {:try_start_d .. :try_end_2f} :catchall_54
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_d .. :try_end_2f} :catch_31

    :cond_2f
    :goto_2f
    monitor-exit v1

    return-void

    :catch_31
    move-exception v0

    :try_start_32
    const-string v2, "MobileAppTracker"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "failed encoding value "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " for key "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V
    :try_end_53
    .catchall {:try_start_32 .. :try_end_53} :catchall_54

    goto :goto_2f

    :catchall_54
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized b()Lorg/json/JSONObject;
    .registers 2

    const-class v1, Lcom/mobileapptracker/m;

    monitor-enter v1

    :try_start_3
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_a

    monitor-exit v1

    return-object v0

    :catchall_a
    move-exception v0

    monitor-exit v1

    throw v0
.end method
