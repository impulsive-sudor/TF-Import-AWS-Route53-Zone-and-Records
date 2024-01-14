import {
  to = aws_route53_zone.zonefm
  id = var.zone_id
}

import {
  to = aws_route53_record.mx-1
  id = "${var.zone_id}_${var.my_domain}_MX"
}

import {
  to = aws_route53_record.soa-1
  id = "${var.zone_id}_${var.my_domain}_SOA"
}

import {
  to = aws_route53_record.txt-1
  id = "${var.zone_id}_${var.my_domain}_TXT"
}

import {
  to = aws_route53_record.ns-1
  id = "${var.zone_id}_${var.my_domain}_NS"
}

import {
  to = aws_route53_record.cname-1
  id = "${var.zone_id}_fm1${var.cname}_CNAME"
}

import {
  to = aws_route53_record.cname-2
  id = "${var.zone_id}_fm2${var.cname}_CNAME"
}

import {
  to = aws_route53_record.cname-3
  id = "${var.zone_id}_fm3${var.cname}_CNAME"
}