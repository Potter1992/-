package com.school.model;

import java.util.List;

import com.jfinal.plugin.activerecord.Model;

public class Zfxfzb_xsjbxxb extends Model<Zfxfzb_xsjbxxb> {
	public static final Zfxfzb_xsjbxxb me = new Zfxfzb_xsjbxxb();

	public List<Zfxfzb_xsjbxxb> findAll() {
		return Zfxfzb_xsjbxxb.me.find("select * from zfxfzb_xsjbxxb");
	}
	public List<Zfxfzb_xsjbxxb> findByArgs(String para) {
		return Zfxfzb_xsjbxxb.me
				.find("select * from zfxfzb_xsjbxxb where zymc like '%"
						+ para + "%'");
	}
}
